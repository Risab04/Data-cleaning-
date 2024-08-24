-- union

select first_name , last_name from employee_demographics
union distinct 
select first_name , last_name from employee_salary;

select first_name , last_name from employee_demographics
union all
select first_name , last_name from employee_salary;


select first_name , last_name,'old man' as label from employee_demographics 
where age > 40 and gender = 'male'
    union 
select first_name , last_name,'old lady' as label from employee_demographics 
where age > 40 and gender = 'female'
    union
select first_name , last_name ,'high pay' as qqq from employee_salary
 where salary>70000; 