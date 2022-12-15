CREATE DATABASE  IF NOT EXISTS `qwe`;
USE `qwe`;


DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT  ,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `telephone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ;
INSERT INTO `customer` VALUES (1,'Vasya','Pupkin','+375291111111'),(2,'Ivan','Ivanov','+375291234567'),(3,'Alexey','Prostoyev','+375445674398'),(4,'Mikhail','Trobov','+375446578108'),(5,'Vladimir','Dvorechin','+375290912129'),(6,'Vova','Krotov','+375446758932');
 
 
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `id` int NOT NULL auto_increment  ,
  `name` varchar(45) NOT NULL,
  `producer` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `detail` VALUES (1,'Engine','VW',5000),(2,'Transmission','Audi',2200),(3,'Clutch','BMW',650),(4,'Release bearing','Seat',35),(5,'Shock absorbers','Peugeout',45);
 

DROP TABLE IF EXISTS `master`;
CREATE TABLE `master` (
  `id` int NOT NULL auto_increment  ,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ;
INSERT INTO `master` VALUES (1,'Roma','Schupkin','6'),(2,'Valera','Gretov','4'),(3,'Maksim','Frolov','3'),(4,'Kostya','Chorov','6'),(5,'Denis','Gromov','5');
 

DROP TABLE IF EXISTS `payment_type`;
CREATE TABLE `payment_type` (
  `id` int NOT NULL auto_increment  ,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ;
INSERT INTO `payment_type` VALUES (1,'Cash'),(2,'Card'),(3,'Cash'),(4,'Card'),(5,'Card');
 

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT auto_increment  ,
  `login` varchar(45) NOT NULL  ,
  `password` varchar(45) NOT NULL,
  `is_admin` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ;
INSERT INTO `user` VALUES (1,'bur@mail.ru','1111',0),(2,'bom@inbox.com','1234',0),(3,'dub@mail.com','5678',0),(4,'jef@mail.ru','2345',0),(5,'koma@tut.by','5432',0),(6,'jhyt@mail.ru','9876',0),(7,'qas','was',0),(8,'poik@inbox.ru','8769',0),(9,'admin','admin',1),(10,'lpo@mail.ru','76543',0);
 

DROP TABLE IF EXISTS `user_action`;
CREATE TABLE `user_action` (
  `id` int NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ;
INSERT INTO `user_action` VALUES (1,'Пользователь вошел в аккаунт','15.10.2022 20:23:08',0),(2,'Пользователь вошел в аккаунт','15.10.2022 20:41:46',7),(3,'Пользователь вошел в аккаунт','15.10.2022 20:55:56',2),(4,'Добавлен заказ','15.10.2022 20:56:52',0),(5,'Пользователь вошел в аккаунт','15.10.2022 20:59:47',2),(6,'Добавлен заказ','15.10.2022 21:00:43',2),(7,'Пользователь вошел в аккаунт','15.10.2022 21:04:04',1),(8,'Пользователь вошел в аккаунт','15.10.2022 21:10:09',5),(9,'Польщователь зарегестрировался','15.10.2022 21:19:17',8),(10,'Добавлен заказ','15.10.2022 21:19:36',8),(11,'Пользователь вошел в аккаунт','15.10.2022 21:28:12',7),(12,'Добавлен заказ','15.10.2022 21:28:25',7),(13,'Пользователь вошел в аккаунт','15.10.2022 21:30:01',7),(14,'Пользователь вошел в аккаунт','15.10.2022 21:30:58',7),(15,'Пользователь вошел в аккаунт','15.10.2022 21:32:44',7),(16,'Добавлен заказ','15.10.2022 21:33:21',7),(17,'Пользователь вошел в аккаунт','15.10.2022 21:36:43',7),(18,'Заказ удален','15.10.2022 21:37:01',7),(19,'Пользователь вошел в аккаунт','15.10.2022 21:39:42',7),(20,'Пользователь вошел в аккаунт','15.10.2022 21:41:32',7),(21,'Пользователь вошел в аккаунт','15.10.2022 21:55:07',7),(22,'Выполнена сортировка по имени заказчика','15.10.2022 21:55:11',7),(23,'Выполнена сортировка по цене','15.10.2022 21:55:16',7),(24,'Выполнен поиск по заданному параметру','15.10.2022 21:55:29',7),(25,'Выполнен поиск по заданному параметру','15.10.2022 21:55:58',7),(26,'Выполнена сортировка по имени заказчика','15.10.2022 21:56:43',7),(27,'Заказ удален','15.10.2022 21:56:52',7),(28,'Заказ удален','15.10.2022 21:57:02',7),(29,'Заказ удален','15.10.2022 21:57:09',7),(30,'Пользователь вошел в аккаунт','15.10.2022 21:58:25',7),(31,'Добавлен заказ','15.10.2022 21:58:36',7),(32,'Заказ удален','15.10.2022 21:58:57',7),(33,'Пользователь вошел в аккаунт','15.10.2022 21:59:17',7),(34,'Пользователь вошел в аккаунт','15.10.2022 22:00:47',7),(35,'Добавлен заказ','15.10.2022 22:00:51',7),(36,'Заказ удален','15.10.2022 22:01:37',7),(37,'Пользователь вошел в аккаунт','15.10.2022 22:02:15',7),(38,'Добавлен заказ','15.10.2022 22:02:19',7),(39,'Заказ удален','15.10.2022 22:03:44',7),(40,'Пользователь вошел в аккаунт','15.10.2022 22:04:37',7),(41,'Заказ удален','15.10.2022 22:04:42',7),(42,'Добавлен заказ','15.10.2022 22:04:48',7),(43,'Пользователь вошел в аккаунт','15.10.2022 22:08:35',7),(44,'Заказ удален','15.10.2022 22:08:41',7),(45,'Добавлен заказ','15.10.2022 22:08:47',7);


DROP TABLE IF EXISTS `work_type`;
CREATE TABLE `work_type` (
  `id` int NOT NULL auto_increment  ,
  `name` varchar(45) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `work_type` VALUES (1,'Install',1200),(2,'Uninstall',800),(3,'Change',400),(4,'Unintall',750),(5,'Install',950);
 

DROP TABLE IF EXISTS `workshop`;
CREATE TABLE `workshop` (
  `id` int NOT NULL auto_increment  ,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);
INSERT INTO `workshop` VALUES (1,'Lulya','Minsk'),(2,'Borto','Gomel'),(3,'Revo','Moscow'),(4,'Wersa','Vitebsk'),(5,'Luna','Minsk');
 

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT unique,
  `id_customer` int NOT NULL DEFAULT '0',
  `id_workshop` int NOT NULL DEFAULT '0',
  `number` varchar(10) NOT NULL,
  `id_detail` int NOT NULL DEFAULT '0',
  `id_master` int NOT NULL DEFAULT '0',
  `id_user` int NOT NULL DEFAULT '0',
  `id_work_type` int NOT NULL DEFAULT '0',
  `id_payment_type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_idx2` (`id_detail`),
  KEY `id_idx3` (`id_master`),
  KEY `id_idx5` (`id_work_type`),
  KEY `id_idx6` (`id_workshop`),
  KEY `id_2` (`id_customer`),
  KEY `id_3` (`id_detail`),
  KEY `id_4` (`id_master`),
  KEY `id_5` (`id_user`),
  KEY `id_6` (`id_work_type`),
  KEY `id_7` (`id_workshop`),
  KEY `2` (`id_customer`),
  KEY `3` (`id_detail`),
  KEY `4` (`id_master`),
  KEY `5` (`id_user`),
  KEY `6` (`id_work_type`),
  KEY `7` (`id_workshop`),
  KEY `id_pay_idx` (`id_payment_type`),
  CONSTRAINT `id_detail` FOREIGN KEY (`id_detail`) REFERENCES `detail` (`id`),
  CONSTRAINT `id_master` FOREIGN KEY (`id_master`) REFERENCES `master` (`id`),
  CONSTRAINT `id_pay` FOREIGN KEY (`id_payment_type`) REFERENCES `payment_type` (`id`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `id_work_type` FOREIGN KEY (`id_work_type`) REFERENCES `work_type` (`id`),
  CONSTRAINT `id_workshop` FOREIGN KEY (`id_workshop`) REFERENCES `workshop` (`id`)
) ;
INSERT INTO `orders` VALUES (1,1,1,'no.1',1,1,1,1,1),(2,2,2,'no.2',2,2,2,2,2),(3,3,3,'no.3dsdasa',1,3,3,3,2),(4,4,4,'8767',4,4,4,4,4),(5,5,5,'12',5,5,5,5,5),(6,1,2,'11111',3,4,5,1,2);





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

DELIMITER $$
create trigger new_user after insert on `user` for each row
begin
	insert into `user_action` values (id ,'Пользователь добавлен' ,sysdate(), new.id );
	END $$
DELIMITER ;

DELIMITER $$
create trigger new_custom after insert on `customer` for each row
begin
	insert into `user_action` values (id ,'Заказчик добавлен' ,sysdate(), new.id );
	END $$
DELIMITER ;

DELIMITER $$
create trigger del_user after delete on `user` for each row
begin
	insert into `user_action` values (id ,'Пользователь удалён' ,sysdate(), old.id );
	END $$
DELIMITER ;

DELIMITER $$
create trigger del_custom after delete on `customer` for each row
begin
	insert into `user_action` values (id ,'Заказчик удалён' ,sysdate(), old.id );
	END $$
DELIMITER ;

DELIMITER $$
create trigger new_master after insert on `master` for each row
begin
	insert into `user_action` values (id ,'Мастер добавлен' ,sysdate(), new.id );
	END $$
DELIMITER ;

DELIMITER $$
create trigger del_master after delete on `master` for each row
begin
	insert into `user_action` values (id ,'Мастер удалён' ,sysdate(), old.id );
	END $$
DELIMITER ;
