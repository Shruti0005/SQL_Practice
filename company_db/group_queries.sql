-- Count employees in each department ID.
select department_id, count(employee_id) 
from employees 
group by department_id;

-- Count employees in each city.
select city, count(employee_id) 
from employees 
group by city;

-- Calculate average salary for each department ID.
select department_id, avg(salary) 
from employees 
group by department_id;

-- Calculate total salary for each department ID.
select department_id, sum(salary) 
from employees 
group by department_id;

-- Find the highest salary in each department ID.
select department_id, max(salary) 
from employees 
group by department_id;

-- Find the lowest salary in each department ID.
select department_id, min(salary) 
from employees 
group by department_id;

-- Count customers in each city.
select city, count(customer_id) 
from customers 
group by city;

-- Count orders for each status.
select status, count(order_id) 
from orders 
group by status;

-- Calculate total order amount for each status.
select status, sum(amount) 
from orders 
group by status;

-- Calculate average order amount for each status.
select status, avg(amount) 
from orders 
group by status;

-- Calculate total salary for each employee city.
select city, sum(salary) 
from employees 
group by city;

-- Calculate average age for each employee city.
select city, avg(age) 
from employees 
group by city;

-- Find highest salary for each employee city.
select city, max(salary) 
from employees 
group by city;

-- Count employees hired in each year.
select date_part('year', hire_date) as hired_year, count(employee_id) 
from employees 
group by date_part('year', hire_date);

-- Calculate total order amount for each customer ID.
select customer_id, sum(amount) 
from orders 
group by customer_id;

-- Count orders placed by each customer ID.
select customer_id, count(order_id) 
from orders 
group by customer_id;

-- Find highest order amount for each customer ID.
select customer_id, max(amount) 
from orders 
group by customer_id;

-- Calculate average order amount for each customer ID.
select customer_id, avg(amount) 
from orders 
group by customer_id;

-- Count employees for each city and department ID combination.
select city, department_id, count(employee_id) 
from employees 
group by city, department_id;

-- Calculate average salary for each city and department ID combination.
select city, department_id, avg(salary) 
from employees 
group by city, department_id;

-- Count employees in each department who are older than 25.
select department_id, count(employee_id) 
from employees 
where age > 25 
group by department_id;

-- Calculate average salary for each department among employees earning more than 40,000.
select department_id, avg(salary) 
from employees 
where salary > 40000 
group by department_id;

-- Calculate total salary for each city among employees earning at least 50,000.
select city, sum(salary) 
from employees 
where salary >= 50000 
group by city;

-- Count orders for each status among orders with amount greater than 3,000.
select status, count(order_id) 
from orders 
where amount > 3000 
group by status;

-- Calculate total amount for each customer ID among Completed orders.
select customer_id, sum(amount) 
from orders 
where status = 'Completed' 
group by customer_id;

-- Calculate average order amount for each non-Cancelled status.
select status, avg(amount) 
from orders 
where status != 'Cancelled' 
group by status;

-- Count customers in each city who signed up on or after 2023-01-01.
select city, count(customer_id) 
from customers 
where signup_date >= '2023-01-01' 
group by city;

-- Find highest salary in each department among employees older than 25.
select department_id, max(salary) 
from employees 
where age > 25 
group by department_id;

-- Count employees in each city hired before 2022-01-01.
select city, count(employee_id) 
from employees 
where hire_date < '2022-01-01' 
group by city;

-- Calculate total order amount per customer for orders from 2024-01-01 through 2024-06-30 inclusive.
select customer_id, sum(amount) 
from orders 
where order_date between '2024-01-01' and '2024-06-30' 
group by customer_id;

-- Employee count per department, sorted by count descending.
select department_id, count(employee_id) as total_employee 
from employees 
group by department_id 
order by total_employee desc;

-- Average salary per department, sorted by average salary descending.
select department_id, avg(salary) as average_salary 
from employees 
group by department_id 
order by average_salary desc;

-- Total order amount per status, sorted by total descending.
select status, sum(amount) as total_order_amount 
from orders 
group by status 
order by total_order_amount desc;

-- Order count per customer ID, sorted by count descending.
select customer_id, count(order_id) as total_orders 
from orders 
group by customer_id 
order by total_orders desc;

-- Total salary per city, sorted alphabetically by city.
select city, sum(salary) as total_salary 
from employees 
group by city 
order by city asc;

-- Employee count per department ID and city combination, sorted by department ID then city.
select city, department_id, count(employee_id) as total_employee 
from employees 
group by city, department_id 
order by department_id asc, city asc;

-- Average age per city, sorted by average age descending.
select city, avg(age) average_age 
from employees 
group by city 
order by average_age desc;

-- Total amount per customer ID, sorted by total descending, limited to three rows.
select customer_id, sum(amount) as total_amount 
from orders 
group by customer_id 
order by total_amount desc limit 3;

-- Order count per status and customer ID combination, sorted by status then customer ID.
select status, customer_id, count(order_id) as total_orders 
from orders 
group by status, customer_id 
order by status asc, customer_id asc; 

-- Total salary and average age per city, sorted by total salary descending.
select city, sum(salary) as total_salary, avg(age) as average_age 
from employees 
group by city 
order by total_salary desc;
