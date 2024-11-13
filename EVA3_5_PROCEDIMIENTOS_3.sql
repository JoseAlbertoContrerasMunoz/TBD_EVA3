delimiter $$
create procedure consultar_empleados()
begin
	select * from employees;
end$$
delimiter ;