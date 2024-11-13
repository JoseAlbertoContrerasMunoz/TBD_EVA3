delimiter $$
create procedure contar_empleados(out cont int)
begin
	select count(*) from employees;
end$$
delimiter ;