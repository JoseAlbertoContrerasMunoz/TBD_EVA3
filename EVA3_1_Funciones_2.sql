create function mostrar_mensaje(cadena varchar(30))
	returns varchar (50) deterministic
    return concat("Tu mensaje: ", cadena)
	