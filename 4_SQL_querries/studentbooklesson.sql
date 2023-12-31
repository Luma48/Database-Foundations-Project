SET search_path TO "df_project_group_110";

CREATE TABLE studentbooklesson (
    Book_Id SERIAL PRIMARY KEY,
    Student_Id SERIAL,
    Lesson_Id SERIAL,
    vehicle_type VARCHAR(50),
    Passed_Theoretical BOOLEAN,
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_id),
    FOREIGN KEY (Lesson_Id) REFERENCES Lesson(Lesson_id)
) ;
INSERT INTO studentbooklesson (Student_Id, Lesson_Id, vehicle_type, Passed_Theoretical)
VALUES
  (1, 1, 'truck', true) ,
  (2, 2, 'car', true) ,
  (3, 3, 'truck', false) ,
  (4, 4, 'van', true) ,
  (5, 5, 'truck', false) ,
  (6, 6, 'car', false) ,
  (7, 7, 'van', false) ,
  (8, 8, 'car', false) ,
  (9, 9, 'car', true) ,
  (10, 10, 'truck', false) ,
  (11, 11, 'truck', true) ,
  (12, 12, 'van', true) ,
  (13, 13, 'van', true) ,
  (14, 14, 'car', true) ,
  (15, 15, 'van', true) ,
  (16, 16, 'truck', false) ,
  (17, 17, 'van', false) ,
  (18, 18, 'van', true) ,
  (19, 19, 'truck', false) ,
  (20, 20, 'van', true) ,
  (21, 21, 'van', true) ,
  (22, 22, 'truck', true) ,
  (23, 23, 'van', true) ,
  (24, 24, 'truck', false) ,
  (25, 25, 'truck', false) ,
  (26, 26, 'truck', true) ,
  (27, 27, 'car', false) ,
  (28, 28, 'car', false) ,
  (29, 29, 'car', false) ,
  (30, 30, 'car', true) ,
  (31, 31, 'car', true) ,
  (32, 32, 'car', false) ,
  (33, 33, 'van', true) ,
  (34, 34, 'van', true) ,
  (35, 35, 'truck', false) ,
  (36, 36, 'van', true) ,
  (37, 37, 'van', false) ,
  (38, 38, 'car', true) ,
  (39, 39, 'van', true) ,
  (40, 40, 'truck', true) ,
  (41, 41, 'truck', true) ,
  (42, 42, 'van', true) ,
  (43, 43, 'car', true) ,
  (44, 44, 'truck', true) ,
  (45, 45, 'car', false) ,
  (46, 46, 'van', true) ,
  (47, 47, 'truck', true) ,
  (48, 48, 'truck', false) ,
  (49, 49, 'car', true) ,
  (50, 50, 'truck', true) ,
  (51, 51, 'van', true) ,
  (52, 52, 'van', true) ,
  (53, 53, 'car', true) ,
  (54, 54, 'car', true) ,
  (55, 55, 'car', false) ,
  (56, 56, 'van', true) ,
  (57, 57, 'car', false) ,
  (58, 58, 'car', true) ,
  (59, 59, 'truck', true) ,
  (60, 60, 'truck', true) ,
  (61, 61, 'van', true) ,
  (62, 62, 'truck', false) ,
  (63, 63, 'van', false) ,
  (64, 64, 'car', true) ,
  (65, 65, 'truck', false) ,
  (66, 66, 'truck', false) ,
  (67, 67, 'car', true) ,
  (68, 68, 'car', false) ,
  (69, 69, 'car', false) ,
  (70, 70, 'van', true) ,
  (71, 71, 'car', true) ,
  (72, 72, 'van', true) ,
  (73, 73, 'van', false) ,
  (74, 74, 'van', false) ,
  (75, 75, 'van', false) ,
  (76, 76, 'van', false) ,
  (77, 77, 'truck', false) ,
  (78, 78, 'van', false) ,
  (79, 79, 'truck', true) ,
  (80, 80, 'car', false) ,
  (81, 81, 'van', false) ,
  (82, 82, 'car', true) ,
  (83, 83, 'car', true) ,
  (84, 84, 'truck', true) ,
  (85, 85, 'car', false) ,
  (86, 86, 'van', false) ,
  (87, 87, 'car', true) ,
  (88, 88, 'van', false) ,
  (89, 89, 'truck', true) ,
  (90, 90, 'car', true) ,
  (91, 91, 'car', true) ,
  (92, 92, 'truck', true) ,
  (93, 93, 'van', true) ,
  (94, 94, 'van', true) ,
  (95, 95, 'van', true) ,
  (96, 96, 'car', true) ,
  (97, 97, 'truck', false) ,
  (98, 98, 'car', false) ,
  (99, 99, 'truck', true) ,
  (100, 100, 'van', false) ,
  (101, 101, 'van', false) ,
  (102, 102, 'car', false) ,
  (103, 103, 'car', true) ,
  (104, 104, 'car', false) ,
  (105, 105, 'van', false) ,
  (106, 106, 'van', false) ,
  (107, 107, 'car', true) ,
  (108, 108, 'truck', true) ,
  (109, 109, 'car', true) ,
  (110, 110, 'van', true) ,
  (111, 111, 'van', true) ,
  (112, 112, 'truck', true) ,
  (113, 113, 'van', false) ,
  (114, 114, 'van', true) ,
  (115, 115, 'truck', false) ,
  (116, 116, 'van', false) ,
  (117, 117, 'truck', false) ,
  (118, 118, 'truck', true) ,
  (119, 119, 'van', false) ,
  (120, 120, 'van', true) ,
  (121, 121, 'car', true) ,
  (122, 122, 'car', false) ,
  (123, 123, 'car', false) ,
  (124, 124, 'car', false) ,
  (125, 125, 'truck', false) ,
  (126, 126, 'van', false) ,
  (127, 127, 'car', true) ,
  (128, 128, 'van', false) ,
  (129, 129, 'truck', true) ,
  (130, 130, 'van', true) ,
  (131, 131, 'truck', true) ,
  (132, 132, 'van', false) ,
  (133, 133, 'van', true) ,
  (134, 134, 'truck', true) ,
  (135, 135, 'car', false) ,
  (136, 136, 'van', false) ,
  (137, 137, 'car', false) ,
  (138, 138, 'car', false) ,
  (139, 139, 'van', true) ,
  (140, 140, 'car', false) ,
  (141, 141, 'truck', true) ,
  (142, 142, 'truck', true) ,
  (143, 143, 'van', false) ,
  (144, 144, 'van', false) ,
  (145, 145, 'van', false) ,
  (146, 146, 'truck', true) ,
  (147, 147, 'car', true) ,
  (148, 148, 'car', false) ,
  (149, 149, 'truck', true) ,
  (150, 150, 'truck', true) ,
  (151, 151, 'car', true) ,
  (152, 152, 'truck', false) ,
  (153, 153, 'truck', false) ,
  (154, 154, 'truck', false) ,
  (155, 155, 'van', false) ,
  (156, 156, 'van', true) ,
  (157, 157, 'van', false) ,
  (158, 158, 'car', true) ,
  (159, 159, 'van', false) ,
  (160, 160, 'truck', false) ,
  (161, 161, 'truck', false) ,
  (162, 162, 'truck', true) ,
  (163, 163, 'truck', false) ,
  (164, 164, 'van', false) ,
  (165, 165, 'car', true) ,
  (166, 166, 'van', true) ,
  (167, 167, 'truck', true) ,
  (168, 168, 'truck', false) ,
  (169, 169, 'truck', true) ,
  (170, 170, 'car', true) ,
  (171, 171, 'car', true) ,
  (172, 172, 'van', false) ,
  (173, 173, 'truck', false) ,
  (174, 174, 'truck', false) ,
  (175, 175, 'van', false) ,
  (176, 176, 'van', true) ,
  (177, 177, 'van', true) ,
  (178, 178, 'car', false) ,
  (179, 179, 'truck', false) ,
  (180, 180, 'car', true) ,
  (181, 181, 'car', false) ,
  (182, 182, 'van', false) ,
  (183, 183, 'van', true) ,
  (184, 184, 'car', true) ,
  (185, 185, 'car', true) ,
  (186, 186, 'van', true) ,
  (187, 187, 'car', false) ,
  (188, 188, 'car', true) ,
  (189, 189, 'car', false) ,
  (190, 190, 'van', true) ,
  (191, 191, 'truck', true) ,
  (192, 192, 'car', true) ,
  (193, 193, 'van', true) ,
  (194, 194, 'van', false) ,
  (195, 195, 'car', true) ,
  (196, 196, 'car', false) ,
  (197, 197, 'truck', true) ,
  (198, 198, 'car', false) ,
  (199, 199, 'car', true) ,
  (200, 200, 'car', false) ,
  (201, 201, 'truck', true) ,
  (202, 202, 'truck', true) ,
  (203, 203, 'van', false) ,
  (204, 204, 'van', false) ,
  (205, 205, 'truck', true) ,
  (206, 206, 'truck', false) ,
  (207, 207, 'van', true) ,
  (208, 208, 'car', true) ,
  (209, 209, 'car', false) ,
  (210, 210, 'van', true) ,
  (211, 211, 'truck', false) ,
  (212, 212, 'van', false) ,
  (213, 213, 'van', false) ,
  (214, 214, 'truck', true) ,
  (215, 215, 'truck', false) ,
  (216, 216, 'van', true) ,
  (217, 217, 'truck', false) ,
  (218, 218, 'car', false) ,
  (219, 219, 'car', true) ,
  (220, 220, 'car', true) ,
  (221, 221, 'car', false) ,
  (222, 222, 'van', true) ,
  (223, 223, 'van', false) ,
  (224, 224, 'car', true) ,
  (225, 225, 'car', true) ,
  (226, 226, 'truck', true) ,
  (227, 227, 'truck', true) ,
  (228, 228, 'car', false) ,
  (229, 229, 'van', true) ,
  (230, 230, 'truck', true) ,
  (231, 231, 'truck', true) ,
  (232, 232, 'truck', false) ,
  (233, 233, 'truck', false) ,
  (234, 234, 'car', true) ,
  (235, 235, 'truck', true) ,
  (236, 236, 'truck', true) ,
  (237, 237, 'truck', true) ,
  (238, 238, 'truck', true) ,
  (239, 239, 'car', false) ,
  (240, 240, 'truck', true) ,
  (241, 241, 'car', true) ,
  (242, 242, 'car', true);