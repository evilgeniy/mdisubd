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
INSERT INTO `detail` VALUES (1,'Engine','VW',5000),(2,'Transmission','Audi',2200),(3,'Clutch','BMW',650),(4,'Release bearing','Seat',35),(5,'Shock absorbers','Peugeout',45),(6,'Shock absorbers','Renault',45);
 

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
