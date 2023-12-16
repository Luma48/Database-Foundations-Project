CREATE TABLE Practical_Class (
    Practical_ClassID SERIAL PRIMARY KEY,
    Vehicle VARCHAR(50),
    Evaluation VARCHAR(50),
    Lesson_id INT,
    FOREIGN KEY (Lesson_id) REFERENCES Lesson(Lesson_id)
);

INSERT INTO Practical_Class (Vehicle, Evaluation, Lesson_id)
VALUES
    ('Car', 'Driving Test', 1);