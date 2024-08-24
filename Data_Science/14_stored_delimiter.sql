-- stored procedure 
use parks_and_recreation ;
create procedure large_salary()
select * from employee_salary where salary > 50000;
call large_salary ;

                    --  drop procedure if exists large_salary ;

delimiter $$
create procedure large_salary2()
begin 
	select * from employee_salary where salary > 50000;
	select * from employee_salary where salary > 10000;
end $$
delimiter ;

call large_salary2;


delimiter $$
create procedure large_salary3(employee_id_p int)
begin 
	select first_name,salary from employee_salary where employee_id = employee_id_p ;
end $$
delimiter ;

call large_salary3(1);
