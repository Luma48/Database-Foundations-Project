SET search_path TO "df_project_group_110";



CREATE TABLE Theoretical_Class(
    Theoretical_ClassID SERIAL PRIMARY KEY,
    ClassRoom int,
    MaxCapacity int,
    Topic varchar(50),
    Lesson_id INT,
    FOREIGN KEY (Lesson_id) REFERENCES Lesson(Lesson_id)
) ;

INSERT INTO Theoretical_Class (ClassRoom, MaxCapacity, Topic, Lesson_id)
VALUES
   (101, 30, 'Introduction to Manual Driving', 1),
   (102, 25, 'Basic Vehicle Control Techniques', 2),
   (103, 20, 'Manual Transmission Operation', 3),
   (104, 35, 'Mastering Clutch and Gear Shifting', 4),
   (105, 28, 'Hill Start and Parking Techniques', 5),
   (201, 40, 'Advanced Manual Driving Skills', 6),
   (202, 22, 'Emergency Maneuvers in Manual Driving', 7),
   (203, 30, 'Manual Transmission Maintenance', 8),
   (204, 25, 'Safety Tips for Manual Drivers', 9),
   (205, 33, 'Mastering Manual Driving in Traffic', 10),
   (301, 30, 'Introduction to SQL', 11),
   (302, 25, 'Data Modeling Basics', 12),
   (303, 20, 'Query Optimization Techniques', 13),
   (304, 35, 'Normalization Concepts', 14),
   (305, 28, 'Indexes and Performance', 15),
   (401, 40, 'Advanced SQL Queries', 16),
   (402, 22, 'Database Security', 17),
   (403, 30, 'Transaction Management', 18),
   (404, 25, 'Backup and Recovery Strategies', 19),
   (405, 33, 'Database Design Best Practices', 20),
   (501, 30, 'Advanced Database Concepts', 21),
   (502, 25, 'Data Warehousing Fundamentals', 22),
   (503, 20, 'Big Data Analytics', 23),
   (504, 35, 'NoSQL Databases', 24),
   (505, 28, 'Cloud Database Solutions', 25),
   (601, 40, 'Spatial Databases', 26),
   (602, 22, 'Graph Databases', 27),
   (603, 30, 'Temporal Databases', 28),
   (604, 25, 'Database Migration Strategies', 29),
   (605, 33, 'Ethical Data Handling', 30),
   (701, 30, 'Data Science Fundamentals', 31),
   (702, 25, 'Machine Learning Basics', 32),
   (703, 20, 'Natural Language Processing', 33),
   (704, 35, 'Deep Learning Concepts', 34),
   (705, 28, 'Reinforcement Learning', 35),
   (801, 40, 'Blockchain and Databases', 36),
   (802, 22, 'Cybersecurity in Databases', 37),
   (803, 30, 'IoT Data Management', 38),
   (804, 25, 'Database DevOps Practices', 39),
   (805, 33, 'Data Governance Strategies', 40);

