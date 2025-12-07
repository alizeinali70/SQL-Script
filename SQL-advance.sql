--CREATE TABLE Majors (
--    MajorId INT IDENTITY(1,1) PRIMARY KEY,
--    MajorName NVARCHAR(50)
--);

--INSERT INTO Majors (MajorName)
--VALUES
--(N'مهندسی کامپیوتر'),
--(N'ریاضی کاربردی'),
--(N'مدیریت صنعتی'),
--(N'مهندسی نرم‌افزار'),
--(N'حسابداری'),
--(N'مهندسی برق');


----DROP TABLE Students;

--CREATE TABLE Students (
--    Id INT IDENTITY(1,1) PRIMARY KEY,
--    Fullname NVARCHAR(50),
--    MajorId INT,
--    Average FLOAT,
--    City NVARCHAR(50),
--);


--INSERT INTO Students (Fullname, MajorId, Average, City)
--VALUES
--(N'مریم احمدی', 1, 18.5, N'تهران'),
--(N'سینا رضایی', 2, 16.2, N'اصفهان'),
--(N'ندا کریمی', 3, 14.8, N'شیراز'),
--(N'محمد مرادی', 4, 19.1, N'تبریز'),
--(N'رضا یوسفی', 5, 12.5, N'مشهد'),
--(N'رضا احمدی', 6, 17.5, N'شیراز');


Select * from Students JOIN Majors ON Students.MajorId = Majors.MajorId

--delete from majors where majorid=6

select * from students left join majors on students.majorid = majors.majorid

select * from students right join majors on students.majorid = majors.majorid

select * from students

select avg(average) from students

select * from students where average > (select avg(average) from students)

select * from students where majorid =( select majorid from majors where majorname = n'مهندسی کامپیوتر');


create view view_studentsmajor as

select 
s.id, s.fullname, m.majorname, s.average, s.city

from students s join majors m 

on s.majorid = m.majorid

select * from view_studentsmajor;


create procedure getstudentsaboveaverage 
@min_avg float

as
begin

select 
s.id, s.fullname, m.majorname, s.average, s.city

from students s join majors m 

on s.majorid = m.majorid

where s.average > @min_avg

end;

exec getstudentsaboveaverage 18;


Create INDEX indx_avg ON students(Average)