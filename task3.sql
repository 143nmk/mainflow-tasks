Use StudentManagement;

create table Student(student_id int primary key,name varchar(30),math_score int,science_score int,english_score int);

desc Student;

INSERT INTO Student VALUES
(1, 'Aarav', 78, 85, 80),
(2, 'Bhavya', 92, 88, 90),
(3, 'Charan', 65, 72, 70),
(4, 'Divya', 89, 90, 95),
(5, 'Eshan', 76, 82, 78),
(6, 'Farhan', 91, 95, 89),
(7, 'Gita', 60, 65, 58),
(8, 'Hitesh', 87, 89, 84),
(9, 'Isha', 74, 78, 72),
(10, 'Jay', 95, 97, 98),
(11, 'Kavya', 70, 75, 73),
(12, 'Laksh', 82, 85, 80);

select * from Student;

-- Retrieve the top 5 students based on their total scores
SELECT name,(math_score + science_score + english_score) AS total_score FROM Student ORDER BY total_score DESC LIMIT 5;

-- Calculate the average math score for students scoring above 70
SELECT AVG(math_score) AS average_math_score
FROM Student
WHERE math_score > 70;

-- Calculate the average total score for students scoring between 200 and 250
SELECT AVG(math_score + science_score + english_score) AS average_total_score
FROM Student
WHERE (math_score + science_score + english_score) BETWEEN 200 AND 250;

-- Find the second-highest math score
SELECT MAX(math_score) AS second_highest_math_score
FROM Student
WHERE math_score < (SELECT MAX(math_score) FROM Students);

-- Count the number of students scoring above 250 in total
SELECT COUNT(*) AS students_above_250
FROM Student
WHERE (math_score + science_score + english_score) > 250;

-- List students who have the same total score
SELECT name, (math_score + science_score + english_score) AS total_score
FROM Student
GROUP BY total_score
HAVING COUNT(total_score) > 1;

-- Rank students based on their total scores
SELECT name, 
       (math_score + science_score + english_score) AS total_score,RANK() OVER (ORDER BY (math_score + science_score + english_score) DESC) FROM Student;
       
       -- Find students with higher Science scores than Math scores
SELECT name, science_score, math_score
FROM Student
WHERE science_score > math_score;

-- Find students scoring above the class average
SELECT name, (math_score + science_score + english_score) AS total_score
FROM Student
WHERE (math_score + science_score + english_score) > 
      (SELECT AVG(math_score + science_score + english_score) FROM Student);
      
-- Find maximum scores in each subject
SELECT 
    MAX(math_score) AS max_math_score,
    MAX(science_score) AS max_science_score,
    MAX(english_score) AS max_english_score
FROM Student;






