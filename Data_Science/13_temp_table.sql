-- temporary table 
create temporary table temp_table 
(first_name varchar(50),lastname varchar(50),fav_movie varchar(50),age int(10));

select * from temp_table ;

insert into temp_table values('risab','jain','3idiots');


create temporary table above_50k
select * from employee_salary where salary > 50000;

select * from above_50k;
