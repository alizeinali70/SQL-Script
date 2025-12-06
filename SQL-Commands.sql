--CREATE TABLE Students
--(Id int IDENTITY(1,1) primary KEY,
--Fullname NVARCHAR(50),
--Major NVARCHAR(50),
--Average Float,
--City NVARCHAR(50)
--);

--INSERT INTO Students (Fullname, Major, Average, City)
--Values
--(N'مریم احمدی', N'مهندسی کامپیوتر', 18.5, N'تهران'),
--(N'سینا رضایی', N'ریاضی کاربردی', 16.2, N'اصفهان'),
--(N'ندا کریمی', N'مدیریت صنعتی', 14.8, N'شیراز'),
--(N'محمد مرادی', N'مهندسی نرم‌افزار', 19.1, N'تبریز'),
--(N'رضا یوسفی', N'حسابداری', 12.5, N'مشهد');


--Select * from students;


--select * from Students
-- where Average > 17;
	

--select * from Students
--where Fullname LIKE N'%ن%';

--Update Students
--SET AVERAGE = 16
--where ID= 3;

--DELETE FROM Students
--where ID= 5;




--INSERT INTO Students (Fullname, Major, Average, City)
--Values
--(N'رضا احمدی', N'مهندسی برق', 17.5, N'شیراز');



--Select TOP 3 * from students 
--order by Average DESC;

--SELECT count(*) from Students;

--SELECT count(*) as Studentscount from Students;


--Select AVG(average) as AVGStudents from Students;

select * from Students;

select min(average) as min from students;

select fullname, max(average) as max from students
group by fullname;


select city, count(*) as studentcount from students
group by city;


select city,count(*) as studentcount
from students
group by city
having count(*) > 1;

select distinct city from students;

select * from students
where average > 19 and city = n'شیراز';  --true and true

select * from students
where average > 19 or city = n'شیراز';  -- true or false


select * from students
where city in (n'اصفهان',n'تهران')


select * from students
where average between 15 and 18;

update students
set average = 20
where city = n'شیراز'