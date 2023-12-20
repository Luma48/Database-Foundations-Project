CREATE SCHEMA IF NOT EXISTS "physical data model";

CREATE  TABLE "physical data model".employee ( 
	pk_employee_id       smallint  NOT NULL  ,
	name                 varchar(50)    ,
	gender               char(1)    ,
	"date of birth"      date    ,
	"phone number"       text    ,
	"job title"          varchar(50)    ,
	CONSTRAINT pk_employee PRIMARY KEY ( pk_employee_id )
 );

CREATE  TABLE "physical data model".lesson ( 
	pk_lesson_id         integer  NOT NULL  ,
	"date"               date    ,
	"time"               time    ,
	"type"               char(1)    ,
	topic                varchar(50)    ,
	"max participants"   smallint    ,
	CONSTRAINT pk_lesson PRIMARY KEY ( pk_lesson_id )
 );

CREATE  TABLE "physical data model".other ( 
	pk_fk_employee_id    smallint  NOT NULL  ,
	"job title"          varchar(50)  NOT NULL  ,
	CONSTRAINT pk_other PRIMARY KEY ( pk_fk_employee_id )
 );

CREATE  TABLE "physical data model".studentbookslesson ( 
	pk_fk_1_lesson_id    smallint  NOT NULL  ,
	pk_fk_2_student_id   smallint  NOT NULL  ,
	CONSTRAINT pk_studentbookslesson PRIMARY KEY ( pk_fk_1_lesson_id, pk_fk_2_student_id ),
	CONSTRAINT unq_studentbookslesson_pk_fk_2_student_id UNIQUE ( pk_fk_2_student_id ) 
 );

CREATE  TABLE "physical data model"."theoretical class" ( 
	pk_fk_lesson_id      smallint  NOT NULL  ,
	classroom            smallint  NOT NULL  ,
	"max capacity"       smallint    ,
	topic                varchar(50)    ,
	CONSTRAINT "pk_theoretical class" PRIMARY KEY ( pk_fk_lesson_id )
 );

CREATE  TABLE "physical data model".branch ( 
	pk_branch_id         smallint  NOT NULL  ,
	name                 varchar(50)    ,
	address              varchar(100)    ,
	employee_capacity    smallint    ,
	hq                   varchar(50)    ,
	fk_employee_id       smallint    ,
	CONSTRAINT pk_branch PRIMARY KEY ( pk_branch_id )
 );

CREATE  TABLE "physical data model".instructor ( 
	pk_fk_employee_id    smallint  NOT NULL  ,
	pk_fk_2_branch_id    integer  NOT NULL  ,
	CONSTRAINT pk_instructor PRIMARY KEY ( pk_fk_2_branch_id, pk_fk_employee_id ),
	CONSTRAINT unq_instructor_pk_fk_employee_id UNIQUE ( pk_fk_employee_id ) 
 );

CREATE  TABLE "physical data model".license ( 
	pk_license_id        smallint  NOT NULL  ,
	fk_employee_id       smallint    ,
	catagory             char(1)  NOT NULL  ,
	CONSTRAINT pk_license PRIMARY KEY ( pk_license_id )
 );

CREATE  TABLE "physical data model"."practical class" ( 
	pk_fk_1_lesson_id    smallint  NOT NULL  ,
	pk_fk_2_license_id   smallint  NOT NULL  ,
	vehicle              varchar(50)    ,
	evaluation           varchar(50)    ,
	CONSTRAINT pk_practicalclass PRIMARY KEY ( pk_fk_2_license_id, pk_fk_1_lesson_id )
 );

CREATE  TABLE "physical data model".student ( 
	pk_student_id        smallint  NOT NULL  ,
	name                 varchar(50)    ,
	gender               char(1)    ,
	"date of birth"      date    ,
	"phone number"       text    ,
	CONSTRAINT pk_student PRIMARY KEY ( pk_student_id )
 );

CREATE  TABLE "physical data model"."administrative position" ( 
	pk_fk_employee_id    smallint  NOT NULL  ,
	pk_fk_2_branch_id    integer  NOT NULL  ,
	CONSTRAINT pk_administrative_position PRIMARY KEY ( pk_fk_2_branch_id, pk_fk_employee_id )
 );

CREATE  TABLE "physical data model".assignedlesson ( 
	pk_fk_employee_id    smallint  NOT NULL  ,
	pk_fk_2_lesson_id    smallint  NOT NULL  ,
	CONSTRAINT pk_assignedlesson PRIMARY KEY ( pk_fk_2_lesson_id, pk_fk_employee_id )
 );

CREATE  TABLE "physical data model".email ( 
	pk_fk_1_employee_id  smallint  NOT NULL  ,
	pk_fk_2_student_id   smallint  NOT NULL  ,
	email                varchar(50)  NOT NULL  ,
	CONSTRAINT pk_email PRIMARY KEY ( pk_fk_1_employee_id, pk_fk_2_student_id, email )
 );

ALTER TABLE "physical data model"."administrative position" ADD CONSTRAINT fk_administrative_position_employee FOREIGN KEY ( pk_fk_employee_id ) REFERENCES "physical data model".employee( pk_employee_id );

ALTER TABLE "physical data model"."administrative position" ADD CONSTRAINT fk_administrative_position_branch FOREIGN KEY ( pk_fk_2_branch_id ) REFERENCES "physical data model".branch( pk_branch_id );

ALTER TABLE "physical data model".assignedlesson ADD CONSTRAINT fk_instructor_assginedlesson FOREIGN KEY ( pk_fk_employee_id ) REFERENCES "physical data model".instructor( pk_fk_employee_id );

ALTER TABLE "physical data model".assignedlesson ADD CONSTRAINT fk_assignedlesson_lesson FOREIGN KEY ( pk_fk_2_lesson_id ) REFERENCES "physical data model".lesson( pk_lesson_id );

ALTER TABLE "physical data model".branch ADD CONSTRAINT fk_branch_employee FOREIGN KEY ( fk_employee_id ) REFERENCES "physical data model".employee( pk_employee_id );

ALTER TABLE "physical data model".email ADD CONSTRAINT fk_employee_email FOREIGN KEY ( pk_fk_1_employee_id ) REFERENCES "physical data model".employee( pk_employee_id );

ALTER TABLE "physical data model".email ADD CONSTRAINT fk_license_student FOREIGN KEY ( pk_fk_2_student_id ) REFERENCES "physical data model".student( pk_student_id );

ALTER TABLE "physical data model".instructor ADD CONSTRAINT fk_instructor_employee FOREIGN KEY ( pk_fk_employee_id ) REFERENCES "physical data model".employee( pk_employee_id );

ALTER TABLE "physical data model".instructor ADD CONSTRAINT fk_instructor_branch FOREIGN KEY ( pk_fk_2_branch_id ) REFERENCES "physical data model".branch( pk_branch_id );

ALTER TABLE "physical data model".license ADD CONSTRAINT fk_license_instructor FOREIGN KEY ( fk_employee_id ) REFERENCES "physical data model".instructor( pk_fk_employee_id );

ALTER TABLE "physical data model".other ADD CONSTRAINT fk_other_employee FOREIGN KEY ( pk_fk_employee_id ) REFERENCES "physical data model".employee( pk_employee_id );

ALTER TABLE "physical data model"."practical class" ADD CONSTRAINT fk_lesson_practicalclass FOREIGN KEY ( pk_fk_1_lesson_id ) REFERENCES "physical data model".lesson( pk_lesson_id );

ALTER TABLE "physical data model"."practical class" ADD CONSTRAINT fk_license_practicallesson FOREIGN KEY ( pk_fk_2_license_id ) REFERENCES "physical data model".license( pk_license_id );

ALTER TABLE "physical data model".student ADD CONSTRAINT fk_student_studentbookslesson FOREIGN KEY ( pk_student_id ) REFERENCES "physical data model".studentbookslesson( pk_fk_2_student_id );

ALTER TABLE "physical data model".studentbookslesson ADD CONSTRAINT fk_lesson_studentbookslesson FOREIGN KEY ( pk_fk_1_lesson_id ) REFERENCES "physical data model".lesson( pk_lesson_id );

ALTER TABLE "physical data model".studentbookslesson ADD CONSTRAINT fk_studentbookslesson_lesson FOREIGN KEY ( pk_fk_1_lesson_id ) REFERENCES "physical data model".lesson( pk_lesson_id );

ALTER TABLE "physical data model"."theoretical class" ADD CONSTRAINT "fk_theoretical class_lesson" FOREIGN KEY ( pk_fk_lesson_id ) REFERENCES "physical data model".lesson( pk_lesson_id );

COMMENT ON TABLE "physical data model".employee IS 'The branch entity, gives us information such as the name, address, capacity and HQ of the branch.';

COMMENT ON COLUMN "physical data model".employee.pk_employee_id IS 'The primary key for the employee (Uses smallint because the number is not very big).';

COMMENT ON COLUMN "physical data model".employee.name IS 'The first and last name of each employee (Uses varchar as the name length is not fixed between employees).';

COMMENT ON COLUMN "physical data model".employee.gender IS 'The gender of an employee (uses char as we use always one letter to represent the employee''s gender: M,F or X).';

COMMENT ON COLUMN "physical data model".employee."date of birth" IS 'The date of birth from each employee, age can be derrvied from this (uses date as we are storing a date).';

COMMENT ON COLUMN "physical data model".employee."phone number" IS 'An employees phone number (Uses text as it the most efficient way to store a phone number).';

COMMENT ON COLUMN "physical data model".employee."job title" IS 'The employees job name (Uses varchar as each job title has a different character length).';

COMMENT ON TABLE "physical data model".lesson IS 'the tabel containing our lesson data.';

COMMENT ON COLUMN "physical data model".lesson.pk_lesson_id IS 'the id of the lesson (Uses smallint as the value nver gets extraordinarily big).';

COMMENT ON COLUMN "physical data model".lesson."date" IS 'the date at which the lesson will take place (Uses the date data type as we are storing a literal date).';

COMMENT ON COLUMN "physical data model".lesson."time" IS 'the time at which the lesson takes place, duration can be derrived form this (Uses the time data types to store time).';

COMMENT ON COLUMN "physical data model".lesson."type" IS 'the type of lesson taking place which can be either theoretical or practical (uses char as the two types can be represented using one letter P for practical and T for theoretical).';

COMMENT ON COLUMN "physical data model".lesson.topic IS 'the topic of the given lesson (uses varchar as the character amount is not fixed per topic).';

COMMENT ON COLUMN "physical data model".lesson."max participants" IS 'the total amount of people who can take the lesson at once. (Uses smallint as the number will never get extraordinarily big).';

COMMENT ON TABLE "physical data model".other IS 'one of the employees possible titles.';

COMMENT ON COLUMN "physical data model".other.pk_fk_employee_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON TABLE "physical data model".studentbookslesson IS 'the N-M relation between and intruction and a leeson which is assigned to them.';

COMMENT ON COLUMN "physical data model".studentbookslesson.pk_fk_1_lesson_id IS 'the pk_fk for this N-M relation (uses the respective data type).';

COMMENT ON COLUMN "physical data model".studentbookslesson.pk_fk_2_student_id IS 'the pk_fk for this N-M relation.';

COMMENT ON TABLE "physical data model"."theoretical class" IS 'one of the employees possible titles.';

COMMENT ON COLUMN "physical data model"."theoretical class".pk_fk_lesson_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model"."theoretical class".classroom IS 'the classroom number (Uses smallint as the number will never be extraordinarily big).';

COMMENT ON COLUMN "physical data model"."theoretical class"."max capacity" IS 'the max number of participants per lesson (Uses smallint as the number will never be extraordinarily big).';

COMMENT ON COLUMN "physical data model"."theoretical class".topic IS 'the topic which is to be discussed during the theoretical lesson (Uses varchar as not all topics have the same fixed character length).';

COMMENT ON TABLE "physical data model".branch IS 'The branch entity, gives us information such as the name, address, capacity and HQ of the branch.';

COMMENT ON COLUMN "physical data model".branch.pk_branch_id IS 'The primary key for the branch (Uses smallint because the number is not very big).';

COMMENT ON COLUMN "physical data model".branch.name IS 'The name of the branch (Uses varchar as the name length is not fixed between branches).';

COMMENT ON COLUMN "physical data model".branch.address IS 'The address of the branch (Uses varchar as it is composed of both letters and numbers in which no numerical operations are performed and the character length is not fixed between branches).';

COMMENT ON COLUMN "physical data model".branch.employee_capacity IS 'The amount of possible employees per branch (Uses smallinto because the number will never be extraordinarily big).';

COMMENT ON COLUMN "physical data model".branch.hq IS 'The headquaters of the brach (Uses varchar as the HQ name is not fixed between branches).';

COMMENT ON COLUMN "physical data model".branch.fk_employee_id IS 'The foreign key relating to the employee table.';

COMMENT ON TABLE "physical data model".instructor IS 'one of the employees possible titles.';

COMMENT ON COLUMN "physical data model".instructor.pk_fk_employee_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model".instructor.pk_fk_2_branch_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON TABLE "physical data model".license IS 'the employees license';

COMMENT ON COLUMN "physical data model".license.pk_license_id IS 'the pk of the license (Uses smallint as the number will never get extraordinarily big).';

COMMENT ON COLUMN "physical data model".license.catagory IS 'The catagory for a license (Uses char as it is always represented by 1 letter A,B,C,D, ...)';

COMMENT ON TABLE "physical data model"."practical class" IS 'one of the employees possible titles.';

COMMENT ON COLUMN "physical data model"."practical class".pk_fk_1_lesson_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model"."practical class".pk_fk_2_license_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model"."practical class".vehicle IS 'the type of vehicle (Uses varchar as the vehicle type names are not at a fixed character length).';

COMMENT ON COLUMN "physical data model"."practical class".evaluation IS 'gives a score based on how well you did (uses varchar as both characters and numbers are included here and there are no numeric operations).';

COMMENT ON TABLE "physical data model".student IS 'The branch entity, gives us information such as the name, address, capacity and HQ of the branch.';

COMMENT ON COLUMN "physical data model".student.pk_student_id IS 'The primary key for the student(Uses smallint because the number is not very big).';

COMMENT ON COLUMN "physical data model".student.name IS 'The first and last name of each student(Uses varchar as the name length is not fixed between employees).';

COMMENT ON COLUMN "physical data model".student.gender IS 'The gender of an employee (uses char as we use always one letter to represent the employee''s gender: M,F or X).';

COMMENT ON COLUMN "physical data model".student."date of birth" IS 'The date of birth from each employee, age can be derrvied from this (uses date as we are storing a date).';

COMMENT ON COLUMN "physical data model".student."phone number" IS 'An employees phone number (Uses text as it the most efficient way to store a phone number).';

COMMENT ON TABLE "physical data model"."administrative position" IS 'one of the employees possible titles.';

COMMENT ON COLUMN "physical data model"."administrative position".pk_fk_employee_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model"."administrative position".pk_fk_2_branch_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON TABLE "physical data model".assignedlesson IS 'the N-M relation between and intruction and a leeson which is assigned to them.';

COMMENT ON COLUMN "physical data model".assignedlesson.pk_fk_employee_id IS 'the pk_fk for this disjoint (Uses the same datatype as explained before).';

COMMENT ON COLUMN "physical data model".assignedlesson.pk_fk_2_lesson_id IS 'the pk_fk for this N-M relation (uses the respective data type).';

COMMENT ON TABLE "physical data model".email IS 'the email of both the student and instructor (it is multivalued).';

COMMENT ON COLUMN "physical data model".email.pk_fk_1_employee_id IS 'pk_fk_1 of the email (Uses smallint as the number will never get extraordinarily big).';

COMMENT ON COLUMN "physical data model".email.pk_fk_2_student_id IS 'pk_fk_2 of the email (Uses smallint as the number will never get extraordinarily big).';

COMMENT ON COLUMN "physical data model".email.email IS 'The catagory for a license (Uses char as it is always represented by 1 letter A,B,C,D, ...)';