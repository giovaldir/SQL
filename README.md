# SQL

![cover](Postgresql_elephant.svg.png)

### Database 
kumpulan data yang terorganisasi, contoh: bank, perpustakaan
### Database Management System (DBMS) 
software komputer yang berfungsi utk mengelola, menyimpan, dan memanipulasi data, contoh DBMS: MySQL, PostgreSQL, Oracle, MS SQL Server, dll.
### Relational Database 
database yang terdiri dari tabel-tabel yang saling terhubung (memiliki relasi), dimana relasi antar tabel tsb digambarkan dlm bentuk *Scheme*
### SQL (Structured Query Language) 
bahasa yg digunakan utk berkomunikasi dgn Database & merupakan bahasa standar yg digunakan dlm RDMS. Task yg biasa dilakukan SQL berupa membuat Database/tabel, input data, update data, dll. (catatan: setiap RDBMS meskipun memakai SQL yg sama, tp biasanya memiliki command eksklusif masing2)
### Jenis-jenis SQL Commands
- DDL (Data Definition Language) merubah struktur tabel seperti membuat tabel, menghapus, menambah kolom dll. Contoh command DDL : CREATE, ALTER, DROP, TRUNCATE
- DML (Data Manipulation Language) membuat ubahan pada database. Contoh command DML: INSERT, UPDATE, DELETE
- DCL (Data Control Language) mengubah akses database (grant/revoke) authority. Contoh command DCL: GRANT, REVOKE
- TCL (Transaction Control Language) mengontrol ubahan yang dilakukan oleh DML. Contoh command (COMMIT, ROLLBACK, SAVEPOINT)
- DQL (Data Query Language) mengambil data dari Database. Contoh DQL: SELECT
### Contoh SQL Query:
struktur SQL hampir mirip dengan grammar pada percakapan sehari-hari
Contoh:

```SQL
SELECT NamaKonsumen, Alamat FROM TabelKonsumen WHERE Deposit = 50000
```

Maka: memilih data konsumen serta alamatnya dari tabelkonsumen, dimana punya depositnya 50000

### PostgreSQL
perangkat lunak RDBMS yg bersifat open source. PostgreSQL menjadi salah satu sistem yg paling bnyk digunakan di industri data krn keunggulannya seperti: gratis, telah dikembangkan lebih dari 30 thn, scalable utk level Enterprise, Dokumentasi lengkap, komunitas besar

### Relasi antara RDBMS, SQL, Database
- Misalkan perpustakaan -> *Database*
dimana tempat menyimpan data-data buku/arsip 
- Misalkan bapak-bapak penunggu perpus(librarian) -> *RDBMS* 
pengelola database contoh Pak Postgre
- Misalkan kita ingin mengakses buku-buku tersebut, maka perlu bicara dengan Pak Postgre menggunakan bahasa yg dimengerti beliau -> menggunakan *SQL*

### Tipe data pada PostgreSQL

      Tipe        Deskripsi
    -------     ---------------------------------------------
     INT         Bilangan Bulat
     FLOAT       Bilangan Riil/desimal
     SERIAL      Pseudo-type integer, untuk urutan (otomatis)
     BOOLEAN     TRUE/FALSE
     DATE        Tanggal
     CHAR(n)     Karakter, Fixed Length, Blank Padded
     VARCHAR(n)  Karakter, variable length

catatan: Char vs Varchar 

- nama -> Char(10)

  nama = Joni (4 karakter)

  tersimpan = Joni______ (4 karakter dgn tambahan *padding* 6 jd terhitung tetap 10 karakter/fixed length)


- nama -> Varchar(10)

  nama = Joni (4 karakter)

  tersimpan = Joni (terhitung 4 karakter/variable length)

### Menulis Query SQL di PostgreSQL

#  [1. Basic SQL](https://github.com/giovaldir/SQL/blob/15f74344b7d477ed39c848aeb90968ed680ac95b/1.%20Giovaldi_SQL_19032023.sql)

#### Memulai query PostgreSQL

Klik nama Database -> Klik Query Tool

#### Command di PostgreSQL

/* ...... */

#### Membuat Database (Databases -> Create)
```SQL
CREATE DATABASE nama_db;
```

#### Menghapus Database (Klik nama Database -> Delete/Drop
```SQL
DROP DATABASE nama_db;
```

#### Membuat Table dalam Database (pastikan melakukan Query Tool di Database yg dituju)
```SQL
CREATE TABLE nama_table(
   nama_kolom tipe_data,
   nama_kolom tipe_data);
```

cek table: nama_db -> Schemas -> Tables

#### Menampilkan Table
```SQL
SELECT * FROM nama_table;
```

catatan: tanda (*) berarti *semua*

#### Menghapus Table
```SQL
DROP TABLE nama_table;
```

#### a. Memasukan nilai ke dalam Table
```SQL
INSERT INTO nama_table VALUES
(..., ..., ..., ...),
(..., ..., ..., ...),
(..., ..., ..., ...);
```
```SQL
INSERT INTO karyawan values
(1, 'Giovaldi', 'IT', 'Data Analyst');
```
#### b. Memasukan nilai ke dalam Table
```SQL
INSERT INTO nama_table (..., ..., ..., ...) VALUES
  (.... , ..., ..., ...),
  (.... , ..., ..., ...),
  (.... , ..., ..., ...),
  (.... , ..., ..., ...);
```  
```SQL
INSERT INTO karyawan (nama, id_karyawan, dept, pos) VALUES
('Jisoo Blackpink', 2, 'Sales', 'Business Analyst'),
('Lisa Blackpink', 3, 'Kpop', 'Singer');
```

#### c. Memasukan nilai ke dalam Table, namun tidak tau semua kolom 
```SQL
INSERT INTO nama_table (nama_kolom, nama_kolom) VALUES
  (..., ...);
```

```SQL
INSERT INTO karyawan (nama, dept) VALUES
  ('Jennie Blackpink', 'Kpop');
```
catatan: namun yang terisi hanya dua kolom saja, sisanya akan berisi kosong

#### Menghapus entri di table 
```SQL
DELETE FROM karyawan WHERE id_karyawan = 2 ;
```

#### Mengupdate nilai yang sdh ada
```SQL
UPDATE nama_table
SET ...
WHERE 
  ... = ...;
```

```SQL
UPDATE karyawan
SET id_karyawan = 1
WHERE 
  nama = 'Jisoo Blackpink';
```

#### Menambah kolom
```SQL
ALTER TABLE nama_table
ADD COLUMN nama_kolom tipe_data, nama_kolom tipe_data;
```

#### Drop kolom
```SQL
ALTER TABLE nama_table
DROP COLUMN nama_kolom, nama_kolom;
```

#### Ganti nama kolom
```SQL
ALTER TABLE nama_table
RENAME nama_kolom TO nama_kolom;
```

#### Ganti tipe data
```SQL
ALTER TABLE nama_table
ALTER COLUMN nama_kolom TYPE tipe_data;
```


## Reference
📚 YouTube
1. Alex Freberg *
• Basic - https://lnkd.in/gEPqCqUh
• Intermediate - https://lnkd.in/g_sYJgw3
• Advanced - https://lnkd.in/gzt72UdA
2. Programming with Mosh * - 3-hour Course - https://lnkd.in/gAiZwfQQ
3. freeCodeCamp - 4-hour Course - https://lnkd.in/gH9tYvsx
4. Edureka - 4-hour Tutorial - https://lnkd.in/gAwYniXM (Thanks, Mohd Faisal!)

📚 Courses
1. Udacity SQL for Data Analysis * - https://lnkd.in/gzsyYZs4
2 Danny Ma's SQL Masterclass Course * - https://lnkd.in/ge7zyWzu

📚 Daily Practice
1. SQL Murder Mystery - https://lnkd.in/gmZvA-i8
2. SQL Bolt * - https://sqlbolt.com/
3. Select* SQL * - https://selectstarsql.com/
4. W3schools - https://lnkd.in/gXyQF3eU (Thanks, Daniel!)
5. SQL Zoo * - https://sqlzoo.net (Thanks, Ebrahim!)

📚 Technical Interview Preparation
1. DataLemur * - https://datalemur.com
2. StrataScratch * - https://lnkd.in/dGikXx4m
3. LeetCode - https://lnkd.in/gXv63ebx
4. HackerRank - https://lnkd.in/gAywRHs6

📚 Portfolio Projects
1. Alex Freberg's Covid-19 Project * - https://lnkd.in/g8PqmFzb
2. Danny Ma's 8 Week SQL Challenge * - https://lnkd.in/gjucZR6T. If you need the solution, check out my repo: https://lnkd.in/gkaNAibU

If you have any resources that I’ve not listed above, do share them in the comments below! I would love to try them out. ☺️
