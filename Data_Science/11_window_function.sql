-- window function 
select dem.first_name , occupation ,gender,avg(salary) over(partition by gender) 
from employee_demographics dem
inner join employee_salary sal 
on dem.employee_id = sal.employee_id ;

select dem.employee_id,dem.first_name,gender,salary,
sum(salary) over(partition by gender order by dem.employee_id) 
from employee_demographics dem
inner join employee_salary sal 
on dem.employee_id = sal.employee_id ;

select dem.first_name , occupation ,gender,salary, 
row_number() over(partition by gender order by salary desc ) as rowss ,
rank() over(partition  by gender order by salary desc) as ranks,
dense_rank() over(partition  by gender order by salary desc) as dense_ranks
from employee_demographics dem
inner join employee_salary sal 
on dem.employee_id = sal.employee_id ;

select avg(salary) from employee_salary;