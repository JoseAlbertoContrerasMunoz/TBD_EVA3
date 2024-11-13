delimiter $$
create function generar_correo(nombre varchar(30), apellido varchar(30), departamento varchar (30))
returns varchar(30) deterministic 
	begin 
        return concat(substring(nombre,1,1), '.', apellido,'@',replace(departamento,' ', ''),'.com');
        -- inicial del nombre + punto + apellido + @ + nombre del departamento + .com
	end$$
delimiter ;