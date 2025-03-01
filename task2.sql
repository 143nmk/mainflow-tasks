CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

CREATE TABLE Enrolments (
    enrolment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrolment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert students
INSERT INTO Students (student_id, name, email) VALUES
(1, 'Manoj', 'manoj@example.com'),
(2, 'Manmadha', 'manmadha@example.com'),
(3, 'Aishwarya', 'aishwarya@example.com'),
(4, 'Kavya', 'kavya@example.com'),
(5, 'Venu', 'venu@example.com'),
(6, 'Ali', 'ali@example.com'),
(7, 'Gowri Shankar', 'gowri@example.com');

select * from Students;

-- Insert courses
INSERT INTO Courses (course_id, course_name, course_description) VALUES
(101, 'Mathematics', 'Advanced Algebra and Calculus'),
(102, 'Physics', 'Fundamentals of Mechanics'),
(103, 'Chemistry', 'Organic and Inorganic Chemistry'),
(104, 'Computer Science', 'Programming and Data Structures');
select * from Courses;
-- Insert enrolments
INSERT INTO Enrolments (enrolment_id, student_id, course_id, enrolment_date) VALUES
(1, 1, 101, '2024-01-15'),
(2, 1, 102, '2024-02-10'),
(3, 2, 103, '2024-02-20'),
(4, 3, 101, '2024-03-05'),
(5, 4, 104, '2024-03-15'),
(6, 4, 103, '2024-03-15'),
(7, 6, 104, '2024-03-15'),
(8, 7, 101, '2024-03-15'),
(9, 6, 102, '2024-03-15'),
(10, 1, 102, '2024-03-15'),
(11, 2, 101, '2024-03-15'),
(12, 2, 103, '2024-03-15'),
(13, 4, 102, '2024-03-15'),
(14, 3, 102, '2024-03-15');


select * from Enrolments;


SELECT s.name AS student_name, c.course_name
FROM Students s
INNER JOIN Enrolments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

SELECT c.course_id, c.course_name, COUNT(e.student_id) AS enrolled_students
FROM Courses c
LEFT JOIN Enrolments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;



SELECT c.course_id, c.course_name
FROM Courses c
LEFT JOIN Enrolments e ON c.course_id = e.course_id
WHERE e.enrolment_id IS NULL;


