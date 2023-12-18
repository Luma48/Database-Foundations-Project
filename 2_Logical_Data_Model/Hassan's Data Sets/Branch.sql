create table Branch (
	branch_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	address VARCHAR(50) NOT NULL,
	employee_Capacity INT NOT NULL,
	head_quarters VARCHAR(50) NOT NULL,
	FOREIGN KEY employee_id INT REFERENCES employee(employee_id)
);
insert into Branch (branch_id, name, address, employee_Capacity, head_quarters,) values (1, 'Haasrode', 'Suite 1', 500, 'Haasrode');
insert into Branch (branch_id, name, address, employee_Capacity, head_quarters,) values (2, 'Alken', 'Suite 94', 120, 'Haasrode');
insert into Branch (branch_id, name, address, employee_Capacity, head_quarters,) values (3, 'Tienen', '20th Floor', 80, 'Haasrode');
insert into Branch (branch_id, name, address, employee_Capacity, head_quarters,) values (4, 'Ghent', '15th Floor', 50, 'Haasrode');
insert into Branch (branch_id, name, address, employee_Capacity, head_quarters,) values (5, 'Sint-Niklaas', '15th Floor', 255, 'Haasrode');