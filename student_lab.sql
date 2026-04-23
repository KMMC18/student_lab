-- create database student_infodb;

-- use student_infodb ;

-- create table Student  (
-- StudentID int AUTO_INCREMENT PRIMARY KEY,
-- Fname VARCHAR (50) NOT NULL,
-- Lname VARCHAR (50) NOT NULL,
-- Major VARCHAR (50) NOT NULL,
-- Academic_year VARCHAR(20) NOT NULL
-- );

-- create table Instructor (
-- InstructorID int AUTO_INCREMENT PRIMARY KEY,
-- Name VARCHAR (50) NOT NULL,
-- Department VARCHAR (50) NOT NULL
-- );

-- create table Course (
-- courseID int AUTO_INCREMENT PRIMARY KEY,
-- title VARCHAR (50) NOT NULL,
-- InstructorID INT,
-- FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
-- );

-- create table Enrollment (
-- EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
-- Grade VARCHAR (5) NULL,
-- StudentID INT,
-- FOREIGN KEY (StudentID) REFERENCES Student (StudentID),
-- courseID INT,
-- FOREIGN KEY (courseID) REFERENCES Course (courseID)
-- );

-- show tables;
 -- describe Student;
 -- describe Course;
 -- describe Instructor;
 -- describe Enrollment;
 
 -- INSERT INTO Student (StudentID, Fname, lname, Major, Academic_year)
--  VALUES
--  (1, 'Nadia', 'Carlos', 'Computing', '2020'),
--  (2, 'Moustapha', 'N', 'Engineering', '2027'),
--  (3, 'Oussou', 'Marion', 'IT', '2019'),
--  (4, 'Caroline', 'Michel', 'Accounting', '2016'),
--  (5, 'Yesna', 'Laverdes', 'Art', '2003');

-- INSERT INTO Instructor (InstructorID, Name, Department)
-- VALUES
-- (1, 'Carlos Linares', 'IT'),
-- (2, 'Jose Santos', 'English'),
-- (3, 'Elisabeth Linardes', 'Mathematics');

-- INSERT INTO Course (CourseID, title, InstructorID)
-- VALUES
-- (1, 'Intro Information System', '1'),
-- (2, 'Public Speaking', 2),
-- (3, 'Intensive writting', 2),
-- (4, 'Maths33', 3);

-- INSERT INTO Enrollment (EnrollmentID, Grade, StudentID, courseID)
-- VALUES
-- (1, 'A+', 1, 1),
-- (2, 'A-', 1, 2),
-- (3, 'B-', 2, 2),
-- (4, 'C-', 3, 4),
-- (5, 'A-', 5, 3),
-- (6, 'B-', 4, 4);

-- select * from Student;
-- select * from Course;
-- select * from Instructor;
-- select * from Enrollment;

-- UPDATE Student
-- SET Major = 'Computer Science'
-- WHERE StudentID = 1;

-- select * from Student;

-- UPDATE Course
-- Set InstructorID = 2
-- WHERE courseID = 1

-- select * from Course;

-- UPDATE Enrollment
-- SET Grade = 'B-'
-- WHERE StudentID = 1;

-- select * from Enrollment;

-- DELETE from Enrollment
-- WHERE EnrollmentID = 2;

-- select * from Enrollment;

-- DELETE from Student
-- WHERE StudentID = 2;

-- DELETE from Enrollment
-- WHERE EnrollmentID = 3;

-- select * from Enrollment;

-- DELETE from Student
-- WHERE StudentID = 2;

-- select * from Student;

-- Select * from Student 
-- ORDER BY Lname ASC;

-- Select *
-- from Course
-- WHERE InstructorID = 2;

-- SELECT 
--     s.StudentID,
--     s.Fname,
--     s.Lname,
--     c.courseID,
--     c.title
-- FROM Student s
-- JOIN Enrollment e ON s.StudentID = e.StudentID
-- JOIN Course c ON e.CourseID = c.courseID;

-- SELECT 
--     c.courseID,
--     c.title,
--     COUNT(e.StudentID) AS number_of_students
-- FROM Course c
-- JOIN Enrollment e ON c.courseID = e.CourseID
-- GROUP BY c.courseID, c.title;

-- SELECT 
--     s.Fname,
--     s.Lname,
--     e.grade
-- FROM Student s
-- JOIN Enrollment e ON s.StudentID = e.StudentID
-- JOIN Course c ON e.CourseID = c.courseID
-- WHERE c.courseID = 1;



 