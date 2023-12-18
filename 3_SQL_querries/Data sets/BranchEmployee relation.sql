CREATE TABLE BranchEmployee (
    BranchID INT,
    EmployeeID INT,
    PRIMARY KEY (BranchID, EmployeeID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
) ;