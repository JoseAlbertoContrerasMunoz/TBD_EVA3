delimiter $$
create function sumar_numeros2(num1 int, num2 int)
	returns int deterministic
    begin 
        declare suma int;
        set suma = num1 + num2;
        return suma;
    end$$
delimiter ; 
    