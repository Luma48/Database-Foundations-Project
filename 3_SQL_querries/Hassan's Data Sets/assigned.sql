CREATE TABLE assigned_lesson (
    employee_id INT,
    lesson_id INT,
    PRIMARY KEY (employee_id, lesson_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
    FOREIGN KEY (lesson_id) REFERENCES lesson(lesson_id)
);