-- Count the total number of employees.
select count(employee_id) as total_employees 
from employees;

-- Count the total number of departments.
select count(department_id) as total_departments 
from departments;

-- Count the total number of customers.
select count(customer_id) as total_customers 
from customers;

-- Count the total number of orders.
select count(order_id) as total_orders 
from orders;

-- Count employees with a non-NULL department ID.
select count(department_id) as total_deparment_ids 
from employees 
where department_id is not null;

-- Count employees with a non-NULL manager ID.
select count(manager_id) as total_manager_ids 
from employees 
where manager_id is not null;

-- Count orders with status Completed.
select count(order_id) as total_orders 
from orders 
where status = 'Completed';

-- Count customers who live in Hyderabad.
select count(customer_id) as total_customers 
from customers 
where city = 'Hyderabad';

-- Calculate the total salary of all employees.
select sum(salary) as total_salary 
from employees;

-- Calculate the total amount of all orders.
select sum(amount) as total_amount 
from orders;

-- Calculate the total salary of employees in department 1.
select sum(salary) as total_salary 
from employees 
where department_id = 1;

-- Calculate the total amount of Completed orders.
select sum(amount) as total_amount 
from orders 
where status = 'Completed';

-- Calculate the total amount of Pending orders.
select sum(amount) as total_amount 
from orders 
where status = 'Pending';

-- Calculate the total salary of employees who live in Mumbai.
select sum(salary) as total_salary 
from employees 
where city = 'Mumbai';

-- Calculate the total amount of orders placed by customer ID 201.
select sum(amount) as total_amount 
from orders 
where customer_id = 201;

-- Calculate the average salary of all employees.
select avg(salary) as average_salary 
from employees;

-- Calculate the average age of all employees.
select avg(age) as average_age 
from employees;

-- Calculate the average order amount.
select avg(amount) as average_amount 
from orders;

-- Calculate the average salary of employees in department 3.
select avg(salary) 
from employees 
where department_id = 3;

-- Calculate the average salary of employees who live in Pune.
select avg(salary) as average_salary 
from employees 
where city = 'Pune';

-- Calculate the average amount of Completed orders.
select avg(amount) as average_amount 
from orders 
where status = 'Completed';

-- Calculate the average age of employees hired in 2022 or later.
select avg(age) as average_age 
from employees 
where hire_date between '2022-01-01' and '2022-12-31' or hire_date > '2022-12-31';

-- Find the lowest employee salary.
select min(salary) as lowest_salary 
from employees;

-- Find the highest employee salary.
select max(salary) as highest_salary 
from employees;

-- Find the youngest employee's age.
select min(age) as youngest_age 
from employees;

-- Find the oldest employee's age.
select max(age) as oldest_age 
from employees;

-- Find the lowest order amount.
select min(amount) as lowest_amount 
from orders;

-- Find the highest order amount.
select max(amount) as highest_amount 
from orders;

-- Find the earliest employee hire date.
select min(hire_date) as earliest_hire_date 
from employees;

-- Find the most recent customer signup date.
select max(signup_date) as recent_customer 
from customers;

-- Count employees whose salary is greater than 50,000.
select count(employee_id) as total_employees  
from employees 
where salary > 50000;

-- Calculate the total salary of employees older than 30.
select sum(salary) as total_salary 
from employees 
where age > 30;

-- Calculate the average salary of employees whose department ID is not NULL.
select avg(salary) as average_salary 
from employees 
where department_id is not null;

-- Find the highest salary among employees in department 1.
select max(salary) as highest_salary 
from employees 
where department_id = 1;

-- Find the lowest order amount among Completed orders.
select min(amount) as lowest_order 
from orders 
where status = 'Completed';

-- Count orders whose amount is greater than 4,000.
select count(order_id) as total_order 
from orders 
where amount > 4000;

-- Calculate the total amount of orders that are not Cancelled.
select sum(amount) as total_amount 
from orders 
where status != 'Cancelled';

-- Find the maximum age among employees who live in Delhi.
select max(age) 
from employees 
where city = 'Delhi';

-- Count employees hired before January 1, 2022.
select count(employee_id) as total_employees 
from employees 
where hire_date < '2022-01-01';

-- Calculate the average order amount for customer IDs 201, 202, and 203.
select avg(amount) as average_amount 
from orders 
where customer_id in (201, 202, 203);
