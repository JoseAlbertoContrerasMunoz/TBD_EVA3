delimiter $$
create function comparar_numeros(val1 int, val2 int)
returns varchar(20) deterministic
begin
	declare resu varchar(20);
    if val1 > val2 then
		set resu = "MAYOR";
	elseif val1 = val2 then
		set resu = "IGUAL";
	else
		set resu = "MENOR";
	end if;
    return resu;
end$$
delimiter ;