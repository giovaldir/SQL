-- Purwadhika Day 1 - SQL

-- melihat database
show databases;

-- drop database toko;
drop database toko;

-- membuat database toko;
create database toko;

-- pakai database toko;
use toko;

-- menampilkan tabel toko;
show tables;

-- membuat tabel;
-- create table nama_tabel, nama_kolom tipe_data
create table test_1 (Id int);

-- describe/melihat struktur tabel;
describe test_1 ;

-- menghapus tabel;
drop table test_1 ;

-- membuat tabel data diri karyawan
create table data_karyawan (
Id int not null auto_increment,
Nama varchar(50) not null,
Usia int,
Kota_Asal text,
Tahun_masuk year,
primary key(Id));

describe data_karyawan ;

-- memasukkan data ke tabel data karyawan dengan insert 
insert into data_karyawan values(
null,'Giovaldi',20,'Bandung',2019);

-- melihat seluruh record data_karyawan
select * from data_karyawan;

-- menambah tabel team ds
create table team_ds(
Id int not null auto_increment,
Nama varchar(50) not null,
Jenis_Kelamin SET('Wanita','Pria'),
Gaji int default 6000000,
primary key(Id));

-- memasukkan data ke tabel team ds dengan insert
insert into team_ds values(
null, 'Giovaldi','Pria', 6000000);

-- melihat seluruh record team_ds
select * from team_ds;

-- cara 1 memasukkan banyak data ke tabel data karyawan dengan insert
insert into data_karyawan values
(null, 'Ramadhan Pamungkas', 25, 'Bandung',2020),
(null, 'Fariz Nurrahman', 25, 'Bandung', 2018),
(null, 'Radito', 25, 'Bali', 2017),
(null, 'Naufal Fahrudin', 23,'Jakarta', 2018),
(null, 'Kharisma Jayatra', 22,'Jogja', 2017),
(null, 'Alfa Aulia', 25,'Padang', 2016),
(null, 'Elga Maulana', 22,'Bandung', 2016),
(null, 'Fauzi Novianda', 21,'Jogja', 2016);

-- cara 2 memasukkan data ke kolom tertentu / multiple column
insert into data_karyawan (Nama,Usia) values ('Abraham Prakoso',26);

-- cara 3 multiple data in 1 column
insert into data_karyawan (Nama) values ('Marsa Abimantra'),('Agan Silmy');

-- melihat seluruh record data_karyawan
select * from data_karyawan ;

-- menambah kolom memakai alter
alter table data_karyawan add column Gaji int;

-- menambah kolom memakai alter dengan urutan tertentu
alter table data_karyawan add column Gaji int after Usia;

-- drop kolom memakai alter 
alter table data_karyawan drop column Gaji;

describe data_karyawan ;

-- mengupdate data dengan kondisi tertentu
update data_karyawan set Gaji = 5000000 where Id = 2;

-- delete data dengan kondisi tertentu
delete from data_karyawan where id = 11;

-- cara import data csv ke sql database
-- 1. membuat database baru
create database football;

use football;

select * from football_result;




