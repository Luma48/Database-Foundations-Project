SET search_path TO "df_project_group_110";

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