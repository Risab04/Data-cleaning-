-- subqueries 
select * from employee_demographics where employee_id in  -- operator 
		 (select employee_id from employee_salary where dept_id = 1); -- operand 
         
with cte_exm as (select employee_id from employee_salary where dept_id = 1),
cte_exm2 as (select * from employee_demographics)
select * from cte_exm join cte_exm2 on cte_exm.employee_id = cte_exm2.employee_id;
         
select first_name,salary ,(select avg(salary) from employee_salary)from employee_salary;


select gender,avg(`max(age)`) from 
(select gender,avg(age),max(age),min(age) from employee_demographics group by gender)as agg_table
 group by gender;

