delimiter $$
create function calcular_potenciaWhile(base int, expo int)
returns int deterministic
begin
    declare resultado int default 1;
    declare cont int default 1;

    while cont <= expo do
        set resultado = resultado * base;
        set cont = cont + 1;
    end while;

    return resultado;
end$$
delimiter ;