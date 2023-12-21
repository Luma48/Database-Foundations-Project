CREATE TABLE instructor (
    employee_id INT,
    job_title VARCHAR (50),
    PRIMARY KEY (employee_id,)
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
);