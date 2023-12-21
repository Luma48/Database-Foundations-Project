create database Driving_school ,

CREATE TABLE Branch (
    Branch_id SERIAL PRIMARY KEY,--it will auto-increamentas as of serial, so didnt need insert anything
    Name varchar(50),
    HQ varchar(50),
    Employee Capacity SMALLINT,
    Address VARCHAR(255)
) ,

INSERT INTO Branch (Name, HeadQuater, ManagerID, EmployeeCapacity, Address) VALUES
    ('Haasrode', 'Main Office', 28, 984, '2167 Bobwhite Plaza'),
    ('Alken', 'Central Office', 13, 555, '92 Loftsgordon Avenue'),
    ('Tienen', 'Regional Office', 61, 600, '937 Autumn Leaf Parkway'),
    ('Sint-Niklaas', 'Local Office', 72, 99, '9 Gale Alley'),
    ('Ghent', 'District Office', 89, 55, '2 Shasta Parkway') ,

