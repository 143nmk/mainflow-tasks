-- Create the StudentScores table
Use StudentManagement;
CREATE TABLE StudentScores ( 
    StudentID INT, 
    TotalScore INT, 
    MathScore INT, 
    ScienceScore INT 
);

-- Insert sample data
INSERT INTO StudentScores (StudentID, TotalScore, MathScore, ScienceScore) 
VALUES 
    (1, 95, 45, 50), 
    (2, 85, 35, 60), 
    (3, 75, 40, 30), 
    (4, 65, 25, 20);
-- Assign grades to students based on total scores
SELECT 
    StudentID, 
    TotalScore,
    CASE 
        WHEN TotalScore >= 90 THEN 'A'
        WHEN TotalScore >= 80 THEN 'B'
        WHEN TotalScore >= 70 THEN 'C'
        ELSE 'D (Fail)'
    END AS Grade
FROM StudentScores;
-- Check if a student passed or failed each subject (threshold: 40)
SELECT 
    StudentID,
    MathScore,
    CASE 
        WHEN MathScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS MathStatus,
    ScienceScore,
    CASE 
        WHEN ScienceScore >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS ScienceStatus
FROM StudentScores;
