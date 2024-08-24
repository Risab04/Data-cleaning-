-- Limit
select * from employee_demographics limit 5;

-- Aliasing 
select gender as g, avg(age) as av , max(age) ma
from employee_demographics group by gender having av > 40;