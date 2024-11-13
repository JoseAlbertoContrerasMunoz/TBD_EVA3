delimiter $$
create function ultimo_id()
returns int deterministic reads sql data
begin
	declare maxid int;
    select max(id) into maxid from productos;
    
    return maxid;
end$$
delimiter ;