CREATE TABLE Instructor (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
),

CREATE TABLE AdministrativePosition (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);


CREATE TABLE Other (
    EmployeeID INT PRIMARY KEY,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
),