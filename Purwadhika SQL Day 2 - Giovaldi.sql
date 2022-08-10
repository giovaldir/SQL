show databases;

use football;

select * from football_result;

-- memilih kolom tertentu
select home_team, home_score from football_result ;

-- memilih data teratas
select * from football_result limit 10;

-- memilih data dari data kelima sejumlah 10 data
select * from football_result limit 5,10;

-- memilih data dan diurutkan berdasarkan home_score, secara default asc/kecil ke besar
select home_team, home_score from football_result order by home_score ;

-- order by secara desc
select home_team, home_score from football_result order by home_score desc;

-- conditional where
select * from football_result where home_score > 30;

select * from football_result where home_score between 20 and 30;

-- salah satu boleh benar baik home_score atau away_score
select * from football_result where home_score > 15 or away_score > 3;

-- memilih beberapa nilai home score lebih dari satu
select * from football_result where home_score in (5,10);

-- memilih berdasarkan huruf/kata depan (biasanya untuk string)
select * from football_result where tournament like 'A%';

-- memilih string dan number
select * from football_result where home_team = "England" and home_score > 10;

-- memilih unique value di kolom tournament
select distinct tournament from football_result ;

-- membuat kolom berdasarkan existing dengan AS (read only)
select *, home_score + away_score as total_goal from football_result;

-- cara 2, total dan selisih yang di absolut kan
select *, home_score + away_score total_goal, abs(home_score - away_score) selisih_goal from football_result;

-- memilih nilai maksimum
select max(home_score) max_goal from football_result;

select * from football_result where home_score>30;

-- memilih nilai min
select min(home_score) max_goal from football_result;

-- subquery : gabungan query

-- cara bacanya, dari akhir dulu baru ke depan
-- contoh: dari jumlah home score tertinggi, ambil nama home_team dan away_team nya
select home_team, away_team from football_result where home_score = (select max(home_score) from football_result);

-- dari jumlah away score tertinggi, ambil seluruh datanya
select * from football_result where away_score = (select max(away_score) from football_result);