use qwe;

DELIMITER $$
create procedure ord_cust(cname varchar(25))
Begin 
    select orders.id,customer.first_name,customer.telephone_number,`number`,work_type.name,detail.name from orders
    inner join `customer` on orders.id_customer=customer.id
    inner join `work_type` on orders.id_work_type=work_type.id
    inner join `detail` on orders.id_detail=detail.id
    where first_name  like cname;
END $$
DELIMITER ;

DELIMITER $$
create procedure ord_mast(cname1 varchar(25))
Begin 
    select orders.id,master.first_name,master.last_name,workshop.name,workshop.address,`number` from orders
    inner join `master` on orders.id_master=master.id
    inner join `workshop` on orders.id_workshop=workshop.id
    where first_name  like cname1;
END $$
DELIMITER ;

DELIMITER $$
create procedure ord_price_dtl()
Begin 
    select orders.id,`number`,master.first_name,master.category,detail.price,payment_type.name from orders
    inner join `master` on orders.id_master=master.id
    inner join `detail` on orders.id_detail=detail.id
    inner join `payment_type` on orders.id_payment_type=payment_type.id
    order by price desc;
END $$
DELIMITER ;

DELIMITER $$
create procedure ord_price_wrk()
Begin 
    select orders.id,`number`,workshop.name,work_type.name,work_type.price from orders
    inner join `workshop` on orders.id_workshop=workshop.id
    inner join `work_type` on orders.id_work_type=work_type.id
 
    order by price desc;
END $$
DELIMITER ;

DELIMITER $$
create procedure ord_prdcr(prod varchar (25) )
Begin 
    select orders.id,`number`,detail.name,detail.producer,work_type.price from orders
    inner join `detail` on orders.id_detail=detail.id
    inner join `work_type` on orders.id_work_type=work_type.id
    where producer like prod;
END $$
DELIMITER ;

DELIMITER $$
create procedure ord_pay_type(pay_tp varchar (25) )
Begin 
    select orders.id,`number`,detail.name,detail.price,work_type.name,work_type.price,payment_type.name from orders
    inner join `detail` on orders.id_detail=detail.id
    inner join `work_type` on orders.id_work_type=work_type.id
    inner join `payment_type` on orders.id_payment_type=payment_type.id
    where payment_type.name like pay_tp;
END $$
DELIMITER ;

DELIMITER $$
create procedure del_ord(num int )
Begin
	delete from orders where id = num;
END $$
DELIMITER ;

DELIMITER $$
create procedure del_cust(num1 int )
Begin
	delete from customer where id = num1;
END $$
DELIMITER ;

DELIMITER $$
create procedure new_cust(fname varchar(25),sname varchar(25), phone varchar(25) )
Begin
	insert into customer values (id,fname,sname,phone);
END $$
DELIMITER ;

DELIMITER $$
create procedure new_user(clog varchar(25),cpass varchar(25) )
Begin
	insert into user values (id,clog,cpass,'0');
END $$
DELIMITER ;

DELIMITER $$
create procedure new_mast(fname varchar(25),sname varchar(25), cat varchar (25) )
Begin
	insert into master values (id,fname,sname,cat);
END $$
DELIMITER ;

DELIMITER $$
create procedure del_mast(num3 int )
Begin
	delete from master where id = num3;
END $$
DELIMITER ;

DELIMITER $$
create procedure del_user(num2 int)
Begin
	delete from user where id = num2;
END $$
DELIMITER ;