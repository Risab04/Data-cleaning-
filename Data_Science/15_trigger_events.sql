--  Triggers and Events 

select * from employee_salary;
select* from employee_demographics;

delimiter $$ 
create trigger employee_insert 
	after insert on employee_salary 
	for each row 
begin 
insert into employee_demographics (employee_id,first_name,last_name) values
(new.employee_id,new.first_name,new.last_name);
end $$
delimiter ; 

insert into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id) values
(13,'risab','jain','data science',150000,null);


-- events  
drop event delete_retires;
delimiter $$ 
create event delete_retires 
on schedule every 30 second 
do
begin 
delete from employee_demographics where age > 60;
end $$
delimiter ;

select * from employee_demographics;
use parks_and_recreation;
