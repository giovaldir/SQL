CREATE TABLE karyawan(
	id_karyawan INT,
	nama VARCHAR(20),
	dept VARCHAR(20),
	pos VARCHAR(20));
	
CREATE TABLE departemen(
	id_dept INT,
	manager VARCHAR(20),
	unit VARCHAR(20),
	alamat VARCHAR(20));
	
SELECT * FROM karyawan;

INSERT INTO karyawan values
(1, 'Giovaldi', 'IT', 'Data Analyst');

INSERT INTO karyawan (nama, id_karyawan, dept, pos)
values
('Jisoo Blackpink', 2, 'Sales', 'Business Analyst');

INSERT INTO karyawan (nama, dept) VALUES
  ('Jennie Blackpink', 'Kpop');

DELETE FROM karyawan WHERE id_karyawan = 1;

UPDATE karyawan
SET id_karyawan = 1
WHERE 
  nama = 'Jisoo Blackpink';
  
ALTER TABLE karyawan ADD COLUMN gaji integer;

ALTER TABLE karyawan DROP COLUMN gaji;

ALTER TABLE karyawan
RENAME dept TO departemen;


ALTER TABLE karyawan
ALTER COLUMN id_karyawan TYPE varchar;