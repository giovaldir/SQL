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
#  [2. BASIC SQL 2](https://github.com/giovaldir/SQL/blob/50c308121b71eef88f393f4ea368a1e08408bce3/2.%20Giovaldi_SQL_20032023.sql)

### Perbedaan Data Engineer, Data Analyst, Data Scientist

       Job Role          Pekerjaan
      ----------------  ---------------------------------------------------------------------------------------------------------------------------------------------
       Data Engineer     Membuat dan mengoptimasi proses data yang membantu Data Scientist dan Data Analyst bekerja.
       Data Analyst      Memberikan nilai atau value dari hasil menganalisa Data, mengkomunikasikan hasil untuk membantu keputusan bisnis perusahaan
       Data Scientist    Menggunakan data untuk menyelesaikan masalah perusahaan yang lebih kompleks menggunakan teknik peramalan, modeling, matematika lanjutan, dan lainnya

- Data Engineer
Requirements: SQL, Python, Cloud, Distributed Computing
            
- Data Analyst
Requirements: SQL, BI Tools, Python/R
      
- Data Scientist
Requirements: Math, Stats, Programming Skills: Python/R,SQL, Big Data
            
### Data Preparation & Import Data menggunakan PostgreSQL           
klik Schemas -> Klik Tables -> Klik kanan di nama table -> Klik Import/Export Data

Pada menu *General*
- Centang Import, masukan Filename, format, encoding yang sesuai

Pada menu *Options*
- Hapus isian Quote, Escape

Pada menu *Columns*
- Pastikan nama-nama kolom terbaca

Klik OK

### Data Understanding          
Data apa, informasi apa yg didapat, bisnis apa, dll

### Memilih Kolom dengan SELECT FROM (saat menulis query baiknya rapihkan, CTRL + SHIFT + F)
```SQL
SELECT kolom_a, kolom_b, kolom_c FROM nama_table;
```

```SQL
SELECT customer_id, customer_name FROM data_latihan;
```

catatan: misalkan kolom ada spasi, contoh: Customer ID maka harus gunakan "Customer ID" agar tidak error

```SQL
SELECT "Customer ID", "Customer Name" FROM data_latihan;
```

### Memilih Kolom kecuali kolom tertentu

```SQL
SELECT *
FROM table_name
EXCEPT
SELECT column_to_exclude
FROM table_name;
```

### Memilih beberapa entri/baris tertentu saja
Memfilter Data dengan WHERE

```SQL
SELECT nama_kolom,nama_kolom
FROM table_name
WHERE nama_kolom = '...';
```

```SQL
select
	*
from
	data_latihan
where
	"Customer Name" = 'Claire Gute';
```

```SQL
select
	*
from
	data_latihan
where
	sales > 100;
```

### Operator Logika: AND, OR, NOT, IN
Klausa WHERE bisa digabungkan dengan operator AND, OR, dan NOT

Operator diatas digunakan untuk memfilter baris berdasarkan satu atau lebih kondisi.

- Operator *AND* akan menampilkan baris jika semua kondisi yang dipisahkan oleh AND bernilai *TRUE*.
Contoh: Dana bantuan diperuntukkan untuk masyarakat berpenghasilan kurang dari 1 jt *DAN* memiliki keluarga. Maka apabila ingin mendapatkan Dana Bantuan, kedua kriteria/syarat hrs terpenuhi, jika salah satu tdk maka tdk bisa mendapat dana bantuan.
- Operaor *OR* akan menampilkan baris jika salah satu kondisi yang dipisahkan oleh OR bernilai *TRUE*.
Contoh: Penumpang kereta yang datang dari Stasiun Bandung *ATAU* Stasiun Jogja berhak mendapatkan tambahan saldo. Maka apabila penumpang berasal dari salah satu stasiun yang disebutkan, terpenuhi utk dapat tambahan saldo. 
- Operator *NOT* akan menampilkan nilai yang tidak benar dari suatu kondisi

### Tampilkan seluruh data dari tabel data_latihan yg memiliki segment konsumen dan berasal dari kota Denver

```SQL
select
	*
from
	data_latihan
where
	segment = 'Consumer'
	and city = 'Denver';
```

### Tampilkan data dari tabel data_latihan yang berasal dari 2 kota: Henderson, Florence

```SQL
select
	*
from
	data_latihan
where
	city = 'Henderson'
	OR city = 'Florence';
```
catatan: kenapa gapake *AND* ? karena seluruh baris hanya memiliki satu kota dan apabila pake AND mengasumsikan Postgre bahwa ada data yg berasal dari dua kota sekaligus

### Tampilkan semua entri kecuali dari region Selatan

```SQL
select
	*
from
	data_latihan
where
	region !='South';
```

### Tampilkan semua entri yang berasal dari kota Akron, Denver, Dallas, Franklin

a. cara menggunakan OR
```SQL
select
	*
from
	data_latihan
where
	city = 'Akron' or city ='Denver' or city= 'Dallas' or city= 'Franklin';
```

b. cara menggunakan IN
```SQL
select
	*
from
	data_latihan
where
	city IN('Akron','Denver', 'Dallas', 'Franklin');
```

Catatan: Operator *IN* digunakan untuk menyingkat proses *OR*
 
#  [3. BASIC SQL 3](https://github.com/giovaldir/SQL/blob/04c931cea46e3054aa17b5787577d46e15242b5a/3.%20Giovaldi_SQL_21032023.sql)

### BETWEEN 

      Operator                    Condition				                    SQL Example
    -----------------------     --------------------------------------------------      -------------------------------
     <,>,>=,=,!=                  Standard numerical operators			         col_name != 4
     BETWEEN....AND.....          Number is within range of two values(inclusive)        col_name BETWEEN 1.5 AND 10.5
     NOT BETWEEN ...AND...        Number is not within range of two values               col_name NOT BETWEEN 1 AND 10
     IN (.......)                 Number exist in a list                                 col_name IN(2,4,6)
     NOT IN(.......)              Number doesnt exist in a list                          col_name NOT IN(1,3,5)

### cari data yang memiliki sales kurang dari 100
```SQL
select
	*
from
	data_latihan
where
	sales < 100;

```

### cari data yang memiliki sales sama dengan 100
```SQL
select
	*
from
	data_latihan
where
	sales = 100;
```

### cari data yang memilki sales lebih dari sama dengan 100 dan kurang dari sama dengan 200

```SQL
select
	*
from
	data_latihan
where
	sales >= 100 and sales <= 200;
```

```SQL
select
	*
from
	data_latihan
where
	sales BETWEEN 100 and 200;
```

catatan: BETWEEN bersifat inclusive sehingga nilai batas yg disebutkan akan include atau msk ke dlm rentang.

### Menampilkan data yang sales tidak ada di rentang 200 dan 500

```SQL
select
	*
from
	data_latihan
where
	sales NOT BETWEEN 200 and 500;
```

### Memilih data yang unik dengan SELECT DISTINCT
Digunakan untuk menampilkan nilai atau data yang berbeda (tdk adanya duplikasi)

### Tampilkan semua nama konsumen

```SQL
select
	distinct "Customer Name" 
from
	data_latihan;
```




### Mencari data dengan Wildcard
### LIKE
digunakan apabila ingin mencari pola data, namun tidak tau persis valuenya. Contoh: hanya tau nama depannya konsumen "L" atau nama akhirnya "O" saja

### % -> karakter apapun, sepanjang apapun

### Mencari konsumen, yang namanya diawali dengan A
```SQL
select
	*
from
	data_latihan
where
	"Customer Name" like 'A%';
```

### Mencari konsumen, yang namanya tengahnya Van
```SQL
select
	*
from
	data_latihan
where
	"Customer Name" like '% Van %';
```

### Mencari konsumen, yang namanya diakhiri dengan A
```SQL
select
	*
from
	data_latihan
where
	"Customer Name" like '%a';
```


### _ -> satu karakter, apapun

### Mencari konsumen, yang huruf kedua dalam namanya a
```SQL
select
	*
from
	data_latihan
where
	"Customer Name" like '_a%';
```

### Mengurutkan data dengan ORDER BY ASC/ DESC
ASC -> kecil ke besar
DESC -> besar ke kecil

```SQL
select
	*
from
	data_latihan
order by
	sales desc;
```
```SQL
select
	*
from
	data_latihan
order by
	sales asc;
```

### mengurutkan dengan lebih dari satu kolom
```SQL
select
	*
from
	data_latihan
order by
	sales, city;
```

### mengurutkan data tapi satunya desc dan lainnya asc
```SQL
select
	*
from
	data_latihan
order by
	sales desc, city asc;
```

### Membatasi banyak row dengan LIMIT
### tampilkan 10 data yang memiliki penjualan terbesar

```SQL
select
	*
from
	data_latihan
order by
	sales desc
limit 10;
```

### NULL
```SQL
select
	*
from
	data_latihan
where
	"Customer Name" IS NULL ;
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
