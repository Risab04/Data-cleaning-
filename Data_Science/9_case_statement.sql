-- Case statement 

select first_name,last_name, age, 
case 
when age<30 then 'young' 
when age between 31 and 50 then 'old' 
when age > 50 then 'too old'
end as label 
from employee_demographics;

select * from parks_departments ;
-- pay increase and bonus 
-- >50000 5%
-- <50000 7%
-- finance 10%

 select *,
 case 
 when salary<=50000 then salary + (salary * 0.05)  -- 5% increment 
 when salary>50000 then salary + (salary * 0.07)  -- 7% increment 
 end as new_sal ,
 case 
 when dept_id = 6 then salary + (salary*0.1)  -- bonus amount 
 end bonus 
 from employee_salary;