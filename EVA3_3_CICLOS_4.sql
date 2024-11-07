delimiter $$
create function calcular_potenciaRepeat(base int, expo int)
returns int deterministic
begin
    declare resultado int default 1;
    declare cont int default 1;

    repeat
        set resultado = resultado * base;
        set cont = cont + 1;
    until cont > expo end repeat;

    return resultado;
end$$
delimiter ;