--SQL Basics Tutorial For Beginners | Select + From Statements | 2/4

-- select top 5 records
--select TOP 5 * from EmployeeDemographics

-- select unique values in a specific column
-- contoh 1
--select distinct(EmployeeID) from EmployeeDemographics --ada 9 records karena kesemuanya unik/berbeda

-- contoh 2
--select distinct(gender) from EmployeeDemographics -- ada 2 records karena hanya ada dua unik

-- menghitung jumlah records dengan COUNT(kolom)
--select count(LastName) AS LastNameCount from EmployeeDemographics

-- mencari nilai maksimum
--select max(salary) from EmployeeSalary

-- mencari nilai minimum
-- select min(salary) from EmployeeSalary

-- mencari nilai rata2
--select avg(salary) from EmployeeSalary

-- membuat query yang aman di database manapun
select * from SQLTutorial.dbo.EmployeeSalary