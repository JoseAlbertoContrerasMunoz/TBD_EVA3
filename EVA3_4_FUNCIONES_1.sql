delimiter $$
create function dia_semana(fecha date)
returns varchar(10) deterministic
begin
	declare dia varchar(10);
    declare num_dia int;
    set num_dia = dayofweek(fecha);
    
    case num_dia
		when 1 then set dia = "Domingo";
        when 2 then set dia = "Lunes";
        when 3 then set dia = "Martes";
        when 4 then set dia = "Miercoles";
        when 5 then set dia = "Jueves";
        when 6 then set dia = "Viernes";
        when 7 then set dia = "Sabado";
	end case;
    return dia;
end$$
delimiter ;