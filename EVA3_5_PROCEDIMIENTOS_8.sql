delimiter $$
create procedure insertar_producto(in nombre varchar(50))
begin
	declare nuevo_id int;
    set nuevo_id = ultimo_id() + 1;
    insert into productos value(nuevo_id, nombre);
end$$
delimiter ;