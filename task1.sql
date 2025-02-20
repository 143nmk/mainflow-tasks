create database StudentManagement;
Use StudentManagement;
create table Students(StudentID int primary key auto_increment,Name varchar(50),Gender char(1),Age int,Grade varchar(10),MathsScore int,ScienceScore int,EnglishScore int);

insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Nithya Aishwarya','F',21,'A',99,98,97);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Mohammad Ali','M',22,'B',84,88,89);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Manmadha Kumar','M',22,'A',98,97,97);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Bala Kavya','F',22,'B',89,87,85);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Gowri Shankar','M',21,'C',75,74,73);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Venu Madhav','M',23,'B',83,80,82);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Sri Leela','F',20,'A',96,95,94);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Yaswanth Sai','M',23,'B',86,88,85);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Jai Prakash','M',22,'C',79,73,72);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Rohith Kumar','M',23,'B',89,90,86);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Dileep Kumar','M',22,'A',92,91,92);
insert into Students(Name,Gender,Age,Grade,MathsScore,ScienceScore,EnglishScore) values('Balu','M',23,'B',84,82,80);

describe Students;

select * from Students;

select avg(MathsScore),avg(ScienceScore),avg(EnglishScore) from Students;

with StudentScore as(select StudentID,Name,Gender,age,Grade,(MathsScore+ScienceScore+EnglishScore) as TotalScore from Students)
select * from StudentScore where TotalScore in (select max(TotalScore) from StudentScore); 

select Grade,count(*) as count from Students group by Grade;
with StudentScore as(select StudentID,Name,Gender,age,Grade,(MathsScore+ScienceScore+EnglishScore) as TotalScore from Students)
select Gender,avg(TotalScore) as AverageScore from StudentScore group by Gender;

select * from Students where MathsScore>80;

update Students set Grade='C' where StudentID=12;

select * from Students;

