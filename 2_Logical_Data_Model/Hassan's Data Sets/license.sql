CREATE TABLE License (
    License_ID INT PRIMARY KEY,
    CATEGORY VARCHAR(50)
);

INSERT INTO License (license_id, CATEGORY)
VALUES
    (1, 'A'),
    (2, 'B'),
    (3, 'C');