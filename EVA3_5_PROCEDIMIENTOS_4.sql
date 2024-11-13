delimiter $$
create procedure consultar_empleado(id_empleado int)
begin
	select * from employees where EMPLOYEE_ID = id_empleado;
end$$
delimiter ;