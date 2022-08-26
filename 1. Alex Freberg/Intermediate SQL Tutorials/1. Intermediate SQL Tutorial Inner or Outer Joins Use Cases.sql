-- Intermediate SQL Tutorial | Inner/Outer Joins | Use Cases

-- Inner Joins : akan mengeluarkan records yang common/overlapping/match/irisan dari table A dan B
--select * 
--from EmployeeDemographics 
--Inner Join EmployeeSalary 
-- on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

-- Outer Joins : akan mengeluarkan seluruh record/gabungan antar keduanya meskipun salah satu tabel tidak match EmployeeID. Yang tidak match di salah satu record tersebut akan ditulis NULL
--select * 
--from EmployeeDemographics 
--Full Outer Join EmployeeSalary 
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 


-- Left Outer Joins : akan mengeluarkan seluruh record tabel A/kiri dulu dan sisanya menampilkan record tabel B/kanan yang cocok dan tidak cocok akan ditampilkan NULL
--select * 
--from EmployeeDemographics 
--Left Outer Join EmployeeSalary 
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

-- Right Outer Joins : akan mengeluarkan seluruh record tabel B/kanan dulu dan sisanya menampilkan record tabel A/kiri yang cocok dan yang tidak cocok akan ditampilkan NULL
--select * 
--from EmployeeDemographics 
--Right Outer Join EmployeeSalary 
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

--exercise
--select EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
--from EmployeeDemographics 
--inner Join EmployeeSalary 
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

--select EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
--from EmployeeDemographics 
--full outer Join EmployeeSalary 
--on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID 

-- select firstname, lastname, gender,salary from EmployeeDemographics as D inner Join EmployeeSalary as S on D.EmployeeID = S.EmployeeID where firstname <> 'Michael' order by salary desc







