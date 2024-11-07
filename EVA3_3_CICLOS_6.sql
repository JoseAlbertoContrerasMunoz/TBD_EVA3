delimiter $$
create function calcular_potenciaLoop(base int, expo int)
returns int deterministic
begin
    declare resultado int default 1;
    declare cont int default 1;

    loop_potencia: loop
        if cont > expo then
            leave loop_potencia;
        end if;

        set resultado = resultado * base;
        set cont = cont + 1;
    end loop loop_potencia;

    return resultado;
end$$
delimiter ;