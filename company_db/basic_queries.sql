-- Display all columns and all records from the employees table.
select * 
from employees;

-- Display only employee_name and salary.
select employee_name, salary 
from employees;

-- Display all columns from the departments table.
select * 
from departments;

-- Display only customer_name and city from the customers table.
select customer_name, city 
from customers;

-- Display employee_name, age, and hire_date.
select employee_name, age, hire_date 
from employees;

-- Display only employee_id and employee_name.
select employee_id, employee_name 
from employees;

-- Display only employee_name and city.
select employee_name, city
from employees;

-- Display only employee_name and department_id.
select employee_name, department_id 
from employees;

-- Display only employee_id and salary.
select employee_id, salary 
from employees;

-- Display only employee_name and hire_date.
select employee_name, hire_date 
from employees;

-- Display all columns from the customers table.
select * 
from customers;

-- Display only customer_id and customer_name.
select customer_id, customer_name 
from customers;

-- Display only customer_name and signup_date.
select customer_name, signup_date 
from customers;

-- Display all columns from the orders table.
select * 
from orders;

-- Display only order_id and amount.
select order_id, amount 
from orders;

-- Display only order_date and status from the orders table.
select order_date, status
from orders;

-- Display only customer_id and order_date from the orders table.
select customer_id, order_date 
from orders;

-- Display only department_name and location.
select department_name, location 
from departments;

-- Display only employee_name, age, and salary.
select employee_name, age, salary 
from employees;

-- Display employee_id, employee_name, age, and city.
select employee_id, employee_name, age, city 
from employees;

-- Display salary first, followed by employee_name.
select salary, employee_name 
from employees;

-- Display city first, followed by employee_name, from employees.
select city, employee_name 
from employees;

-- Display hire_date first, followed by employee_name and salary.
select hire_date, employee_name, salary
from employees;

-- Display amount first, followed by order_id and status, from orders.
select amount, order_id, status 
from orders;

-- Display department_id first, followed by employee_name and salary.
select department_id, employee_name, salary 
from employees;

-- Display customer_name first, followed by customer_id and signup_date.
select customer_name, customer_id, signup_date 
from customers;

-- Display order_date first, followed by order_id and customer_id.
select order_date, order_id, customer_id 
from orders;

-- Display employee_name, salary, and department_id, in that exact column order.
select employee_name, salary, department_id 
from employees;

-- Display customer_id, city, and customer_name, in that exact column order.
select customer_id, city, customer_name 
from customers;

-- Display order_id, status, amount, and order_date, in that exact column order.
select order_id, status, amount, order_date 
from orders;
