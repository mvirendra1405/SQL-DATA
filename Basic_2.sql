use virendra;
select * from customer;
select * from customer where country="pakistan"; 
select * from customer where country like "%k%"; 
select * from customer where country like "p%n"; 
select * from customer where address like "k%i"; 
select * from customer where customer_id between 1 and 5; 
select * from customer where country in ("pakistan"); 
select * from customer where country in ("india"); 