use qwe;

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
