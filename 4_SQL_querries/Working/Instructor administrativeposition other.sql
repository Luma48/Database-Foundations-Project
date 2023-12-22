SET search_path TO team_110;

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