CREATE TABLE practical_class (
    lesson_id,
    license_id_id INT,
    vehicle VARCHAR(20) Not Null,
    evaluation VARCHAR(10) Not Null, -- Assuming 'pass' or 'fail'
    FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id),
    FOREIGN KEY (license_id) REFERENCES license(license_id)
);
INSERT INTO practical_class (vehicle, evaluation)
VALUES
    ('Car', 'Pass'),
    ('Truck', 'Pass'),
    ('Motorcylce', 'Pass')
    ('Car', 'Fail'),
    ('Truck', 'Fail'),
    ('Motorcylce', 'Fail')
