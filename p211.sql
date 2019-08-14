--create database P211_demo

use P211_demo

--4G langugae

--create table Students(
--	Id int,
--	Name nvarchar(20),
--	Surname nvarchar(20),
--	FatherName nvarchar(20),
--	Birthdate datetime,
--	Email nvarchar(40)
--)

--DML statements and DDL statements
-- DML data manipulation language
-- DDL data description language


select 
	Upper(Name) 'Name', 
	Surname, 
	CONCAT(Name, ' ', Surname, ' ', Upper(ISNULL(FatherName, '')))  'Full name', 
	[Group],
	Email,
	FORMAT (Birthdate, 'dd/MM/yyyy')  'Birthdate',
	Gender = case Gender
		when 'm' then 'Male'
		when 'f' then 'Female'
		else 'Other'
		END
from Students
--where Email LIKE '%c%' AND Email LIKE '%q%'
order by Year(Birthdate), Month(Birthdate)


--insert into Students
--values(5, 'Sebine', 'Haciyeva', 'Fazil', '2000-04-15', 'sebine@code.az'), 
--      (6, 'Nihad', 'Teymurlu', 'Natiq', '2005-12-12', 'nihad@code.az')

--select * from Students

--update Students
--set Surname = 'Eliyeva'
--where Id = 5

--update Students
--set Gender = 'f'
--where Id in (5, 7)


--alter table Students
--add [Group] nvarchar(5)