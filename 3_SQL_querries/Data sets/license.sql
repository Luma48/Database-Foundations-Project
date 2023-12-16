CREATE TABLE License (
    License_ID SERIAL PRIMARY KEY,
    CATEGORY VARCHAR(50)
);

INSERT INTO License (CATEGORY)
VALUES
    ('Category A'),
    ('Category B'),
    ('Category C');