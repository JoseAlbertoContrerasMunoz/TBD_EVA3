delimiter $$
create function dia_semana(numero int)
returns varchar(10) deterministic
begin
	declare resu varchar(10);
    case numero
		when 1 then set resu = "DOMINGO";
        when 2 then set resu = "LUNES";
        when 3 then set resu = "MARTES";
        when 4 then set resu = "MIERCOLES";
        when 5 then set resu = "JUEVES";
        when 6 then set resu = "VIERNES";
        when 7 then set resu = "SABADO";
        else
			set resu = "NO VALIDO";
	end case;
    return resu;
end $$
delimiter ;
        