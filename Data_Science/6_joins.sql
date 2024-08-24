-- Inner Joins 
use parks_and_recreation;
select * from employee_demographics as dem;
select * from employee_salary as sal;

select * from employee_demographics as dem 
inner join employee_salary as sal
	 on  dem.employee_id = sal.employee_id;
    
select dem.employee_id , age,occupation  from employee_demographics as dem 
join employee_salary as sal
	on  dem.employee_id = sal.employee_id;

select * from employee_demographics join employee_salary
	on  employee_demographics.first_name = employee_salary.first_name;
    
-- outer joins
select * from employee_demographics as dem 
left outer join employee_salary as sal
	on  dem.employee_id = sal.employee_id;
    
select * from employee_demographics as dem 
Right outer join employee_salary as sal
	on  dem.employee_id = sal.employee_id;
    
-- self join
select * from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
    
-- joining multiple table 

select * from employee_demographics as dem 
join employee_salary as sal
	on  dem.employee_id = sal.employee_id
inner join parks_departments pd 
    on sal.dept_id = pd.department_id ;
    
select * from parks_departments;




