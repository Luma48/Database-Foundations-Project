SET search_path TO team_110;


CREATE TABLE Branch (
    Branch_id SERIAL PRIMARY KEY,--it will auto-increamentas as of serial, so didnt need insert anything
    Name varchar(50),
    HQ varchar(50),
    Employee_Capacity SMALLINT,
    Address VARCHAR(255)
);

INSERT INTO Branch (Name, HQ, Employee_Capacity, Address) VALUES
    ('Haasrode', 'Main Office', 984, '2167 Bobwhite Plaza'),
    ('Alken', 'Central Office', 555, '92 Loftsgordon Avenue'),
    ('Tienen', 'Regional Office', 600, '937 Autumn Leaf Parkway'),
    ('Sint-Niklaas', 'Local Office', 99, '9 Gale Alley'),
    ('Ghent', 'District Office', 55, '2 Shasta Parkway');


GRANT SELECT ON ALL TABLES IN SCHEMA ztest TO local_r0922952;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA ztest TO local_r0922952;

