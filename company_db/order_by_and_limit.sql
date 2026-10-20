-- All employees sorted by salary ascending.
select * 
from employees 
order by salary asc;

-- All employees sorted by salary descending.
select * 
from employees 
order by salary desc;

-- All employees sorted by age ascending.
select * 
from employees 
order by age asc;

-- All employees sorted by age descending.
select * 
from employees 
order by age desc;

-- All employees sorted alphabetically by employee name.
select * 
from employees 
order by employee_name asc;

-- All employees sorted by hire date from earliest to latest.
select * 
from employees 
order by hire_date asc;

-- All employees sorted by hire date from latest to earliest.
select * 
from employees 
order by hire_date desc;

-- All departments sorted alphabetically by department name.
select * 
from departments 
order by department_name asc;

-- All customers sorted by signup date from earliest to latest.
select * 
from customers 
order by signup_date asc;

-- All orders sorted by amount from highest to lowest.
select * 
from orders 
order by amount desc;

-- Five highest-paid employees.
select * 
from employees 
order by salary desc 
limit 5;

-- Three lowest-paid employees.
select * 
from employees 
order by salary asc 
limit 3;

-- Five youngest employees.
select * 
from employees 
order by age asc 
limit 5;

-- Four oldest employees.
select * 
from employees 
order by age desc 
limit 4;

-- Three most recently hired employees.
select * 
from employees 
order by hire_date desc 
limit 3;

-- Four earliest-hired employees.
select * 
from employees 
order by hire_date asc 
limit 4;

-- Five orders with the highest amounts.
select * 
from orders 
order by amount desc 
limit 5;

-- Three orders with the lowest amounts.
select * 
from orders 
order by amount asc 
limit 3;

-- Four most recently registered customers.
select * 
from customers 
order by signup_date desc 
limit 4;

-- Two departments with the highest department IDs.
select * 
from departments 
order by department_id desc 
limit 2;

-- Employees sorted by department ID ascending, then salary descending.
select * 
from employees 
order by department_id asc, salary desc;

-- Employees sorted by city alphabetically, then employee name alphabetically.
select * 
from employees 
order by city asc, employee_name asc;

-- Employees sorted by age ascending, then salary descending.
select * 
from employees 
order by age asc, salary desc;

-- Employees sorted by department ID ascending, then age ascending.
select * 
from employees 
order by department_id asc, age asc;

-- Orders sorted by status alphabetically, then amount descending.
select * 
from orders 
order by status asc, amount desc;

-- Customers sorted by city alphabetically, then signup date ascending.
select * 
from customers 
order by city asc, signup_date asc;

-- First five employees sorted by city alphabetically, then salary descending.
select * 
from employees 
order by city asc, salary desc 
limit 5;

-- Three highest-paid employees, employee name alphabetically for salary ties.
select * 
from employees 
order by salary desc, employee_name asc 
limit 3;

-- Orders sorted by customer ID ascending, then order date descending.
select * 
from orders 
order by customer_id asc, order_date desc;

-- Five oldest employees, employee name alphabetically for age ties.
select * 
from employees 
order by age desc, employee_name asc 
limit 5;

-- Three highest-paid employees in department 1.
select * 
from employees 
where department_id = 1 
order by salary desc 
limit 3;

-- Five most expensive completed orders.
select * 
from orders 
where status = 'Completed' 
order by amount desc 
limit 5;

-- Four lowest-paid employees among those older than 25.
select * 
from employees 
where age > 25 
order by salary asc 
limit 4;

-- Three most recently hired employees with salary greater than 40,000.
select * 
from employees 
where salary > 40000 
order by hire_date desc 
limit 3;

-- Five earliest-signup customers in Pune or Hyderabad.
select * 
from customers 
where city in ('Pune', 'Hyderabad') 
order by signup_date asc 
limit 5;

-- Three highest-paid employees who do not live in Mumbai.
select * 
from employees 
where not city = 'Mumbai' 
order by salary desc 
limit 3;

-- Four largest orders whose status is not Cancelled.
select * 
from orders 
where not status = 'Cancelled' 
order by amount desc 
limit 4;

-- Five highest-paid employees, hire date ascending for salary ties.
select * 
from employees 
order by salary desc, hire_date asc 
limit 5;

-- Three oldest employees earning at least 50,000, salary descending for age ties.
select * 
from employees 
where salary >= 50000 
order by age desc, salary desc 
limit 3;

-- Five most recent orders with amount greater than 2,000, amount descending for date ties.
select * 
from orders 
where amount > 2000 
order by order_date desc, amount desc 
limit 5;

-- Unique employee city and age combinations, sorted by city.
select distinct city, age 
from employees 
order by city;

-- Unique order status and amount combinations, sorted by amount descending.
select distinct status, amount 
from orders 
order by amount desc;

-- Unique employee cities sorted alphabetically.
select distinct city 
from employees 
order by city asc;

-- Unique customer cities sorted alphabetically, limited to three rows.
select distinct city 
from customers 
order by city asc 
limit 3;

-- Unique employee department IDs sorted ascending.
select distinct department_id 
from employees 
order by department_id asc;

-- Unique order statuses sorted alphabetically.
select distinct status 
from orders 
order by status asc;

-- Unique employee city and department ID combinations, sorted by city then department ID.
select distinct city, department_id 
from employees 
order by city, department_id;

-- Unique order status and amount combinations, sorted by status then amount descending.
select distinct status, amount 
from orders 
order by status asc, amount desc;

-- Employee name as employee and salary as pay, sorted by pay descending.
select employee_name as employee, salary as pay 
from employees 
order by pay desc;

-- Customer name as customer, city as location, signup date as joined_on, sorted newest to oldest.
select customer_name as customer, city as location, signup_date as joined_on 
from customers 
order by joined_on desc;

-- Unique customer ID and order status combinations, sorted by customer ID then status.
select distinct customer_id, status 
from orders 
order by customer_id, status;

-- Unique employee city and age combinations, alias city as location and age as employee_age, sorted by location then employee_age descending.
select distinct city as location, age as employee_age 
from employees 
order by location asc, employee_age desc;
