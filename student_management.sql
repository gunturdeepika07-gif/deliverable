-- Database creation
CREATE DATABASE StudentManagement;

USE StudentManagement;
-- Table creation
CREATE TABLE Students(StudentID INT Primary key auto_increment,
                        Name VARCHAR(50),
                        Gender char(1),
                        Age INT,
                        Grade VARCHAR(2),
                        MathScore INT,
                        ScienceScore INT,
                        EnglishScore INT);
                        
-- Insert data
INSERT INTO Students(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('SUMATHI', 'F', 19, 'A', 90, 91, 91),
('ANITHA', 'F',20, 'B', 85, 90, 91),
('AMITH', 'M',19, 'A', 91, 92, 94),
('GAYATHRI', 'F',20, 'A', 85, 86, 95),
('RAHUL', 'M', 20, 'C', 72, 75, 80),
('MAHESH', 'M', 20, 'A', 92, 93, 92),
('SURESH', 'M', 19, 'A', 95, 95, 96),
('KUMAR', 'M', 20, 'B', 82, 83, 85),
('LAVANYA', 'F', 20, 'B', 83, 84, 83),
('SAI', 'M', 19, 'D', 55, 60, 40);


-- Queries
SELECT * FROM Students;

SELECT avg(MathScore), avg(ScienceScore), avg(EnglishScore) from Students;

select Name, (MathScore+ScienceScore+EnglishScore) as total from Students order by total desc limit 1;
 
select Grade, count(*) as student_count from Students group by Grade;

select Gender, avg(MathScore) as avg_math, avg(ScienceScore) as avg_sci, avg(EnglishScore) as avg_eng from Students group by gender;

select * from Students where MathScore >= 80; 

SET SQL_SAFE_UPDATES=0;

update Students set Grade='A' where Name='KUMAR';
