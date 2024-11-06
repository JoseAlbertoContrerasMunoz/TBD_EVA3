delimiter $$
create function conversion_temp(formula int, valor int)
returns varchar(50) deterministic
begin
    declare resu varchar(50);
    case formula
        when 1 then 
            set resu = concat(valor + 273, " K"); -- Celsius a Kelvin
        when 2 then 
            set resu = concat((valor * 1.8) + 32, " °F"); -- Celsius a Fahrenheit
        when 3 then 
            set resu = concat(valor - 273, " °C"); -- Kelvin a Celsius
        else
            set resu = "Formula Invalida";
    end case;
    return resu;
end $$
delimiter ;