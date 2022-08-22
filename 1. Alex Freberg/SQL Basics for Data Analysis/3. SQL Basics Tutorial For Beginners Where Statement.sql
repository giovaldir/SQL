-- SQL Basics Tutorial For Beginners | Where Statement | 3/4
-- where statement -- <,>,<=,>=,<>, and, or, like, null, not null, in

--SELECT * from EmployeeDemographics where FirstName = 'Jim'
--SELECT * from EmployeeDemographics where Age >= 30 
-- where statement + AND
-- SELECT * from EmployeeDemographics where Age >= 32 AND Gender = 'Male' -- disini menjelaskan bahwa hasil query dengan AND harus memenuhi dua kriteria kondisi, yaitu usia harus lebih dari sama dengan 32 dan juga berjenis kelamin lelaki, Jika salah satunya tdk terpenuhi maka tdk akan keluar

-- where statement + OR 
-- SELECT * from EmployeeDemographics where Age >= 32 OR Gender = 'Male' -- disini menjelaskan bahwa query OR berfokus kepada masing2 kondisi, jika usia diatas 32 maka dipilih kemudian jika tidak apakah dia seorang lelaki/perempuan ? kalau laki2 maka dipilih juga meskipun usia tdk sesuai kriteria

-- where statement + LIKE
-- SELECT * from EmployeeDemographics where LastName like 'S%' -- mengambil data yang punya huruf depan S
-- SELECT * from EmployeeDemographics where LastName like 'S%o%' -- mengambil data yang punya huruf depan S dan mengandung huruf o
-- SELECT * from EmployeeDemographics where LastName like '%S%' -- mengambil data yang mengandung huruf S/wild card
-- SELECT * from EmployeeDemographics where LastName like '%N' -- mengambil data yang punya huruf belakang N

-- where statement IS NULL, NOT NULL
-- SELECT * from EmployeeDemographics where LastName IS NULL -- mengeluarkan seluruh kolom yang mana lastname yg mengandung null aja
-- SELECT * from EmployeeDemographics where LastName IS NOT NULL -- mengeluarkan seluruh kolom yang mana lastname yg gaada null aja

-- where statement + IN : mirip dengan atau sering dibilang untuk multiple "=" statement
--SELECT * from EmployeeDemographics where FirstName = 'Jim' -- "=" statement normal
-- SELECT * from EmployeeDemographics where FirstName IN ('Jim','Michael') -- IN statement, akan mengeluarkan firstname equal jim dan michael



