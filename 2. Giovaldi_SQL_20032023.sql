select
	*
from
	data_latihan dl ;

select
	"Customer ID" ,
	"Customer Name" 
from
	data_latihan dl;

SELECT "Customer ID" ,city 
FROM data_latihan 
EXCEPT
SELECT "Product Name" , "Ship Date" 
FROM data_latihan;

select
	*
from
	data_latihan
where
	"Customer Name" = 'Claire Gute';
	
select
	*
from
	data_latihan
where
	"Customer Name" = 'Irene Maddox';
	
select
	*
from
	data_latihan
where
	segment = 'Consumer';
	
select
	*
from
	data_latihan
where
	sales > 100;
	
select
	*
from
	data_latihan
where
	segment = 'Consumer'
	and city = 'Denver';

select
	*
from
	data_latihan
where
	city = 'Henderson'
	OR city = 'Florence';
	

select
	*
from
	data_latihan
where
	region !='South';
	

select
	*
from
	data_latihan
where
	city = 'Akron' or city ='Denver' or city= 'Dallas' or city= 'Franklin';

select
	*
from
	data_latihan
where
	city IN('Akron','Denver', 'Dallas', 'Franklin');