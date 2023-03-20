select
	*
from
	data_latihan
where
	sales < 100;
	
select
	*
from
	data_latihan
where
	sales = 100;
	

select
	*
from
	data_latihan
where
	sales >= 100 and sales <= 200;
	

select
	*
from
	data_latihan
where
	sales BETWEEN 100 and 200;
	

select
	*
from
	data_latihan
where
	sales not BETWEEN 200 and 500;
	

select
	distinct "Customer Name" 
from
	data_latihan;
	
select
	*
from
	data_latihan
where
	"Customer Name" like 'A%';
	
select
	*
from
	data_latihan
where
	"Customer Name" like '%a';

select
	*
from
	data_latihan
where
	"Customer Name" like '% Van %';

select
	*
from
	data_latihan
where
	"Customer Name" like '_a%';
	


select
	*
from
	data_latihan
order by
	sales desc;
	
select
	*
from
	data_latihan
order by
	sales, city desc;
	
select
	*
from
	data_latihan
order by
	sales asc, city desc;


select
	*
from
	data_latihan
order by
	sales desc
limit 10;

select
	*
from
	data_latihan
where
	"Customer Name" is NULL;
