CREATE TABLE Practical_Class (
    Lesson_id SMALLINT PRIMARY KEY,
    Vehicle VARCHAR(50),
    Evaluation VARCHAR(100),
    FOREIGN KEY (Lesson_id) REFERENCES Lesson(Lesson_id)
) ;

INSERT INTO Practical_Class (Vehicle, Evaluation, Lesson_id)
VALUES
    ('Car', 'Driving Test', 1) ;