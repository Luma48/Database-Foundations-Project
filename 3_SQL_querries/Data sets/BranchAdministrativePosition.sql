CREATE TABLE BranchAdministrativePosition (
    Branch_id SMALLINT,
    Employee_id SMALLINT,
    PRIMARY KEY (Branch_id, Employee_id),
    FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id),
    FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
);
