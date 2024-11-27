CREATE DEFINER=`root`@`localhost` TRIGGER `pruebas_AFTER_DELETE` AFTER DELETE ON `pruebas` FOR EACH ROW BEGIN
	insert into bitacora(id_modificado, tabla, accion)
    value(old.id,"pruebas","delete");
END