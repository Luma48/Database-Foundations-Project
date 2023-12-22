SET search_path TO "df_project_group_110";

CREATE TABLE Student (
    Student_id SERIAL PRIMARY KEY,
    Name varchar(50),
    Date_of_Birth DATE,
    Phone_Number varchar (20),
    Gender varchar(20)
) ;

CREATE TABLE studentbooklesson (
    Book_Id SERIAL PRIMARY KEY,
    Student_Id SERIAL,
    Lesson_Id SERIAL,
    vehicle_type VARCHAR(50),
    Passed_Theoretical BOOLEAN,
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_id),
    FOREIGN KEY (Lesson_Id) REFERENCES Lesson(Lesson_id)
) ;

CREATE TABLE Theoretical_Class(
    Theoretical_ClassID SERIAL PRIMARY KEY,
    ClassRoom int,
    MaxCapacity int,
    Topic varchar(50),
    Lesson_id INT,
    FOREIGN KEY (Lesson_id) REFERENCES Lesson(Lesson_id)
) ;

CREATE TABLE Branch (
    Branch_id SERIAL PRIMARY KEY,--it will auto-increamentas as of serial, so didnt need insert anything
    Name varchar(50),
    HQ varchar(50),
    Employee_Capacity SMALLINT,
    Address VARCHAR(255)
);

CREATE TABLE BranchAdministrativePosition (
    Branch_id SMALLINT,
    Employee_id SMALLINT,
    PRIMARY KEY (Branch_id, Employee_id),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id),
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);

-- multivalued attribute table
CREATE TABLE EmailAddress (
    Email VARCHAR(50) PRIMARY KEY,
    Student_Id SERIAL,  -- Assuming Student_Id is a foreign key referencing STUDENT table
    Employee_Id SMALLINT,    -- Assuming Employee_Id is a foreign key referencing Employee table
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_id),
    FOREIGN KEY (Employee_Id) REFERENCES Employee(Employee_Id)
) ;

CREATE TABLE BranchEmployee (
    Branch_id SMALLINT,
    Employee_id SMALLINT,
    PRIMARY KEY (Branch_id, Employee_id),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id),
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
) ;

CREATE TABLE Instructor (
    Employee_id SMALLINT PRIMARY KEY,
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);

CREATE TABLE AdministrativePosition (
    Employee_id SMALLINT PRIMARY KEY,
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
) ;

CREATE TABLE Other (
    Employee_id SMALLINT PRIMARY KEY,
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);

CREATE TABLE Employee (
    Employee_Id SMALLINT PRIMARY KEY,
    name VARCHAR(50),
    Date_of_Birth DATE NOT NULL,
    Phone_Number VARCHAR(20),
    gender VARCHAR(20) NULL
) ;

CREATE TABLE Lesson (
    Lesson_Id INT PRIMARY KEY,
    Lesson_Date DATE,
    Lesson_Time VARCHAR(50)
) ;

CREATE TABLE License (
    License_ID SERIAL PRIMARY KEY,
    CATEGORY VARCHAR(50)
) ;

CREATE TABLE Practical_Class (
    Practical_ClassID SERIAL PRIMARY KEY,
    Vehicle VARCHAR(50),
    Evaluation VARCHAR(50),
    Lesson_id INT,
    FOREIGN KEY (Lesson_id) REFERENCES Lesson(Lesson_id)
) ;



