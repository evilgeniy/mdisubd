use qwe;
select * from `master` where category>4;


select * from detail where price between 300 and 4000;


select * from customer where last_name like '%ov%';


select `name`, `producer` from detail order by `producer` asc;


select * from `master`;

insert into `master` values (6,'Andrey','Romanov','5');
select * from `master`;


update `master` set first_name = 'Danila', category = '4' where id = 6;
select * from `master`;


delete from customer where id	= '4';
select * from `customer`;
