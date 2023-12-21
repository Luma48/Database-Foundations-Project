CREATE TABLE instructor (
    employee_id INT,
    branch_id INT,
    PRIMARY KEY (employee_id, branch_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);