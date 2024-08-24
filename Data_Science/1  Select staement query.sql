select * from parks_and_recreation.employee_demographics;

#basics code 
select first_name,
last_name, 
age,
(age + 10)*10
from parks_and_recreation.employee_demographics;

select DISTINCT gender,first_name from parks_and_recreation.employee_demographics;
