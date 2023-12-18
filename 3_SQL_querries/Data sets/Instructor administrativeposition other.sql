CREATE TABLE Instructor (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE AdministrativePosition (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
) ;

CREATE TABLE Other (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
);