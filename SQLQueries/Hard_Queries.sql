use qwe;
select customer.first_name, orders.id, orders.number
from customer 
left join orders on customer.id = orders.id_customer
order by customer.first_name;




select orders.id,customer.first_name, number, master.first_name
	from orders
    inner join `customer` on orders.id_customer= customer.id
    inner join `master` on orders.id_master= master.id
	order by master.first_name;





select first_name from customer
union 
select first_name from master
order by first_name desc;

select price from detail
union 
select price from work_type
order by price desc;


select count(`time`), `name` from user_action	
group by `name`;



select count(`time`), `name` from user_action	
group by `name`
having count('time')>7
order by count('time') desc;



select login from `user`
where exists ( select `name` from user_action where `name` like '%заказ');



select producer,price,
case 
	when price > 900 then 'Ценa больше 900'
    when price = 900 then 'Ценa ровно 900'
    else 'Ценa меньше 900 '
end as price_text
from detail;	

select name,price,
case 
	when price > 750 then 'Цена больше 750'
    when price = 750 then 'Цена равна 750'
    else 'Цена меньше 750'
end as price_text
from work_type;	


explain select first_name from customer
union 
select first_name from master
order by first_name desc;