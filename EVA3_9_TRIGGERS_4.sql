CREATE DEFINER=`root`@`localhost` TRIGGER `productos_AFTER_INSERT` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
	set @cont = @cont + 1;
END