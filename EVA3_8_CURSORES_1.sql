delimiter $$
create procedure dooms_day()
begin
	declare emp_id int;
    declare h_date date;
    declare j_id varchar(10);
    declare dep_id int;
    
    declare salir int default false;
    
	declare datos_empleados cursor for select employee_id, hire_Date, job_id, department_id from employees;
    
    declare continue handler for not found set salir = true;

    open datos_empleados;
    
    empleados: loop
		fetch datos_empleados into emp_id, h_date, j_id, dep_id;
        if salir then 
			leave empleados;
		end if;
        insert into job_history(EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID) value(emp_id, h_date, curdate(), j_id, dep_id);
    end loop;
end$$
delimiter ; 