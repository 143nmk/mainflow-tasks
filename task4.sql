Use StudentManagement;

CREATE TABLE Student (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    MathScore INT NOT NULL,
    TotalScore INT NOT NULL
);



INSERT INTO Student (Name, MathScore, TotalScore) VALUES
('Alice', 85, 250),
('Bob', 78, 230),
('Charlie', 92, 280),
('David', 85, 260),
('Emma', 90, 275),
('Frank', 75, 220);


SELECT * FROM Students;



SELECT 
    StudentID, 
    Name, 
    TotalScore, 
    RANK() OVER (ORDER BY TotalScore DESC) AS `Rank`
FROM Student;



SELECT 
    StudentID, 
    Name, 
    MathScore, 
    SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotal
FROM Student;