-- SQL Basics Tutorial For Beginners | Group By + Order By Statements | 4/4
-- select distinct vs group by
-- GROUP BY memungkinkan Anda menggunakan fungsi agregat, seperti AVG, MAX, MIN, SUM, dan COUNT. Sebaliknya DISTINCT hanya menghilangkan duplikat. 
-- Misalnya, jika Anda memiliki banyak catatan pembelian, dan Anda ingin tahu berapa banyak yang dihabiskan oleh masing-masing departemen, Anda mungkin melakukan sesuatu menggunakan GROUP BY, seperti:

-- select department, sum(amount) from purchases group by department

-- contoh dengan db 
-- SELECT distinct(gender) FROM EmployeeDemographics
-- SELECT gender from EmployeeDemographics Group by gender

--select gender, count(gender) from EmployeeDemographics group by gender
-- select gender, count(distinct (gender)) from EmployeeDemographics
--select gender, age, count(gender) from EmployeeDemographics group by gender, age



-- ORDER BY: secara default ASC(kecil-besar), lawannya desc

-- select * from EmployeeDemographics order by age, gender -- disini diurutkan secara kecil ke besar dari umur yaitu 29 dan setelahnya diurutkan berdasarkan gender contoh usia 30 diurutkan dari F / female dulu baru male
-- select * from EmployeeDemographics order by age, gender desc -- diurutkan asc untuk age, dan desc untuk gender

-- select * from EmployeeDemographics order by age desc, gender desc -- diurutkan desc keduanya
-- select * from EmployeeDemographics order by 4 desc, 5 desc -- cara dua dengan menggunakan urutan kolom, age (4), gender (5)
