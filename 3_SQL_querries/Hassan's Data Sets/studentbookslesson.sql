CREATE TABLE student_books_lesson (
    lesson_id INT,
    student_id INT,
    PRIMARY KEY (lesson_id, student_id),
    FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);