-- Display department IDs that have more than two employees.
select department_id, count(employee_id) 
from employees 
group by department_id 
having count(employee_id) > 2;

-- Display cities that have more than two employees.
select city, count(employee_id) 
from employees 
group by city 
having count(employee_id) > 2;

-- Display departments whose average salary is greater than 60,000.
select department_id, avg(salary) 
from employees 
group by department_id 
having avg(salary) > 60000;

-- Display departments whose total salary is greater than 100,000.
select department_id, sum(salary) 
from employees 
group by department_id 
having sum(salary) > 100000;

-- Display employee cities whose highest salary is greater than 70,000.
select city, max(salary) 
from employees 
group by city 
having max(salary) > 70000;

-- Display employee cities whose lowest salary is less than 40,000.
select city, min(salary) 
from employees 
group by city 
having min(salary) < 40000;

-- Display order statuses that have more than three orders.
select status, count(order_id) 
from orders 
group by status 
having count(order_id) > 3;

-- Display order statuses whose total order amount is greater than 10,000.
select status, sum(amount) 
from orders 
group by status 
having sum(amount) > 10000;

-- Display customer IDs that have placed more than one order.
select customer_id, count(order_id) 
from orders 
group by customer_id 
having count(order_id) > 1;

-- Display customer IDs whose average order amount is greater than 3,000.
select customer_id, avg(amount) 
from orders 
group by customer_id 
having avg(amount) > 3000;

-- Display departments with at least three employees.
select department_id, count(employee_id) 
from employees 
group by department_id 
having count(employee_id) >= 3;

-- Display cities where the average employee age is greater than 28.
select city, avg(age) 
from employees 
group by city 
having avg(age) > 28;

-- Display departments where the maximum salary is at least 80,000.
select department_id, max(salary) 
from employees 
group by department_id 
having max(salary) >= 80000;

-- Display departments where the minimum salary is greater than 30,000.
select department_id, min(salary) 
from employees 
group by department_id 
having min(salary) > 30000;

-- Display customer IDs whose total order amount is greater than 5,000.
select customer_id, sum(amount) 
from orders 
group by customer_id 
having sum(amount) > 5000;

-- Display customer IDs whose highest order amount is greater than 4,000.
select customer_id, max(amount) 
from orders 
group by customer_id 
having max(amount) > 4000;

-- Display customer IDs whose lowest order amount is less than 2,500.
select customer_id, min(amount) 
from orders 
group by customer_id 
having min(amount) < 2500;

-- Display order statuses whose average order amount is at least 4,000.
select status, avg(amount) 
from orders 
group by status 
having avg(amount) >= 4000;

-- Display cities where the total employee salary is at least 100,000.
select city, sum(salary) 
from employees 
group by city 
having sum(salary) >= 100000;

-- Display cities with at least two employees whose average salary is greater than 50,000.
select city, count(employee_id), avg(salary) 
from employees 
group by city 
having count(employee_id) >= 2 and avg(salary) > 50000;

-- Among employees older than 25, display departments with more than one employee.
select department_id, count(employee_id) 
from employees 
where age > 25 
group by department_id 
having count(employee_id) > 1;

-- Among employees earning more than 40,000, display departments whose average salary is greater than 60,000.
select department_id, avg(salary) 
from employees 
where salary > 40000 
group by department_id 
having avg(salary) > 60000;

-- Among employees who do not live in Mumbai, display cities whose total salary exceeds 80,000.
select city, sum(salary) 
from employees 
where city != 'Mumbai' 
group by city 
having sum(salary) > 80000;

-- Among completed orders, display customer IDs whose total order amount exceeds 5,000.
select customer_id, sum(amount) 
from orders 
where status = 'Completed' 
group by customer_id 
having sum(amount) > 5000;

-- Among orders with amounts greater than 2,000, display statuses that have at least two orders.
select status, count(order_id) 
from orders 
where amount > 2000 
group by status 
having count(order_id) >= 2;

-- Among employees hired on or after January 1, 2022, display cities with more than one employee.
select city, count(employee_id) 
from employees 
where hire_date >= '2022-01-01' 
group by city 
having count(employee_id) > 1;

-- Among customers who signed up during 2023, display cities with at least two customers.
select city, count(customer_id) 
from customers 
where signup_date between '2023-01-01' and '2023-12-31' 
group by city 
having count(customer_id) >= 2;

-- Among employees with a non-NULL department ID, display departments whose average salary exceeds 50,000.
select department_id, avg(salary) 
from employees 
where department_id is not null 
group by department_id 
having avg(salary) > 50000;

-- Among non-cancelled orders, display customer IDs whose total order amount exceeds 6,000.
select customer_id, sum(amount) 
from orders 
where status != 'Cancelled' 
group by customer_id 
having sum(amount) > 6000;

-- Among orders placed from January 1, 2024, through June 30, 2024, inclusive, display customer IDs with at least two orders.
select customer_id, count(order_id) 
from orders 
where order_date between '2024-01-01' and '2024-06-30' 
group by customer_id 
having count(order_id) >= 2;

-- Display departments with more than one employee, sorted by employee count from highest to lowest.
select department_id, count(employee_id) 
from employees 
group by department_id 
having count(employee_id) > 1 
order by count(employee_id) desc;

-- Display cities whose average salary is greater than 45,000, sorted by average salary descending.
select city, avg(salary) 
from employees 
group by city 
having avg(salary) > 45000 
order by avg(salary) desc;

-- Display customer IDs whose total order amount exceeds 5,000, sorted by total amount descending.
select customer_id, sum(amount) 
from orders 
group by customer_id 
having sum(amount) > 5000 
order by sum(amount) desc;

-- Display order statuses with at least two orders, sorted by order count descending.
select status, count(order_id) 
from orders 
group by status 
having count(order_id) >= 2 
order by count(order_id) desc;

-- Display departments whose maximum salary is greater than 70,000 and minimum salary is less than 50,000.
select department_id, max(salary), min(salary) 
from employees 
group by department_id 
having max(salary) > 70000 and min(salary) < 50000;

-- Display cities with at least two employees and a total salary greater than 100,000.
select city, count(employee_id), sum(salary) 
from employees 
group by city 
having count(employee_id) >= 2 and sum(salary) > 100000;

-- Display customer IDs whose average order amount is greater than 2,500 and whose total order amount is greater than 6,000.
select customer_id, avg(amount), sum(amount) 
from orders 
group by customer_id 
having avg(amount) > 2500 and sum(amount) > 6000;

-- Display departments with at least two employees, whose average age is greater than 28, sorted by average age descending.
select department_id, count(employee_id), avg(age) 
from employees 
group by department_id 
having count(employee_id) >= 2 and avg(age) > 28 
order by avg(age) desc;

-- Display the two customer IDs with the highest total order amount, considering only customers whose total exceeds 4,000.
select customer_id, sum(amount) 
from orders 
group by customer_id 
having sum(amount) > 4000 
order by sum(amount) desc 
limit 2;

-- Display cities with more than one employee, where the average salary is greater than 40,000, sorted by total salary descending.
select city, count(employee_id), avg(salary), sum(salary) 
from employees 
group by city 
having count(employee_id) > 1 and avg(salary) > 40000 
order by sum(salary) desc;
