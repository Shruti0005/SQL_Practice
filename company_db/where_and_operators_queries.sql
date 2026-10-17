-- Employees whose salary is greater than 50,000.
select * 
from employees 
where salary > 50000;

-- Employees whose age is less than 30.
select * 
from employees 
where age < 30;

-- Employees whose salary is exactly 60,000.
select * 
from employees 
where salary = 60000;

-- Employees whose city is 'Pune'.
select * 
from employees 
where city = 'Pune';

-- Employees whose department ID is 3.
select * 
from employees 
where department_id = 3;

-- Employees whose age is greater than or equal to 30.
select * 
from employees 
where age >= 30;

-- Employees whose salary is less than or equal to 40,000.
select * 
from employees 
where salary <= 40000;

-- Employees whose city is 'Mumbai'.
select * 
from employees 
where city = 'Mumbai';

-- Employees whose employee ID is 105.
select * 
from employees 
where employee_id = 105;

-- Employees whose salary is not equal to 50,000.
select * 
from employees 
where salary != 50000;

-- Employees whose salary is greater than 70,000.
select * 
from employees 
where salary > 70000;

-- Employees whose age is less than or equal to 25.
select * 
from employees 
where age <= 25;

-- Employees hired after '2022-01-01'.
select * 
from employees 
where hire_date > '2022-01-01';

-- Employees hired before '2020-01-01'.
select * 
from employees 
where hire_date < '2020-01-01';

-- Employees whose salary is greater than or equal to 65,000.
select * 
from employees 
where salary >= 65000;

-- Employees whose age is exactly 34.
select * 
from employees 
where age = 34;

-- Employees whose department ID is not equal to 1.
select * 
from employees 
where department_id != 1;

-- Employees whose city is not 'Delhi'.
select * 
from employees 
where city != 'Delhi';

-- Orders whose amount is greater than 4,000.
select * 
from orders 
where amount > 4000;

-- Orders whose status is exactly 'Pending'.
select * 
from orders 
where status = 'Pending';

-- Departments located in 'Hyderabad'.
select * 
from departments 
where location = 'Hyderabad';

-- Departments whose department ID is greater than 2.
select * 
from departments 
where department_id > 2;

-- Customers who live in 'Pune'.
select * 
from customers 
where city = 'Pune';

-- Customers who signed up after '2023-12-31'.
select * 
from customers 
where signup_date > '2023-12-31';

-- Customers whose customer ID is less than 205.
select * 
from customers 
where customer_id < 205;

-- Orders with an amount less than or equal to 2,500.
select * 
from orders 
where amount <= 2500;

-- Orders placed after '2024-04-01'.
select * 
from orders 
where order_date > '2024-04-01';

-- Orders whose status is not equal to 'Completed'.
select * 
from orders 
where status != 'Completed';

-- Customers whose signup date is before '2023-01-01'.
select * 
from customers 
where signup_date < '2023-01-01';

-- Orders whose customer ID is greater than or equal to 205.
select * 
from orders 
where customer_id >= 205;

-- Employee names and salaries for employees earning more than 60,000.
select employee_name, salary 
from employees 
where salary > 60000;

-- Employee names, ages, and cities for employees younger than 28.
select employee_name, age, city 
from employees 
where age < 28;

-- Employee IDs and hire dates for employees hired on or after '2022-01-01'.
select employee_id, hire_date 
from employees 
where hire_date >= '2022-01-01';

-- Employee names and department IDs for employees whose department ID is not equal to 3.
select employee_name, department_id 
from employees 
where department_id != 3;

-- Order IDs, amounts, and statuses for orders with an amount greater than 5,000.
select order_id, amount, status 
from orders 
where amount > 5000;

-- Customer names and signup dates for customers who signed up on or before '2023-03-15'.
select customer_name, signup_date 
from customers 
where signup_date <= '2023-03-15';

-- Employee names and salaries for employees earning less than 35,000.
select employee_name, salary 
from employees 
where salary < 35000;

-- Department names for departments whose department ID is less than or equal to 3.
select department_name 
from departments 
where department_id <= 3;

-- Order IDs and dates for orders placed before '2024-03-01'.
select order_id, order_date 
from orders 
where order_date < '2024-03-01';

-- Employee names, ages, and salaries for employees whose age is greater than 30.
select employee_name, age, salary 
from employees 
where age > 30;

