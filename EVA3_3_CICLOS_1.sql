delimiter $$
create function sumatoria_loop(num int)
returns int deterministic
begin
	declare sumatoria int default 0;
    declare cont int default 1;
    
    miciclo: loop
		set sumatoria = sumatoria + cont;
        set cont = cont + 1;
        if cont > num then
			leave miciclo;
		end if;
    end loop miciclo;
    return sumatoria;
end$$
delimiter ;