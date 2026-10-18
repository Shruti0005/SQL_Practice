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

-- Employees whose salary is greater than 50,000 AND age is less than 30.
select * 
from employees 
where salary > 50000 and age < 30;

-- Employees who live in Pune OR Mumbai.
select * 
from employees 
where city = 'Pune' or city = 'Mumbai';

-- Employees whose age is greater than 25 AND salary is less than 70,000.
select * 
from employees 
where age > 25 and salary < 70000;

-- Employees whose department ID is 1 OR department ID is 3.
select * 
from employees 
where department_id = 1 or department_id = 3;

-- Employees whose salary is at least 60,000 AND city is Delhi.
select * 
from employees 
where salary >= 60000 and city = 'Delhi';

-- Employees whose age is less than 25 OR salary is greater than 80,000.
select * 
from employees 
where age < 25 or salary > 80000;

-- Employees whose city is not Pune.
select * 
from employees 
where not city = 'Pune';

-- Employees whose salary is not equal to 40,000 AND age is greater than 25.
select * 
from employees 
where not salary = 40000 and age > 25;

-- Employees whose department ID is 2 OR city is Mumbai.
select * 
from employees 
where department_id = 2 or city = 'Mumbai';

-- Employees whose age is at least 30 AND salary is greater than 60,000.
select * 
from employees 
where age >= 30 and salary > 60000;

-- Employees whose salary is greater than 40,000 AND less than 80,000.
select * 
from employees 
where salary > 40000 and salary < 80000;

-- Employees in Hyderabad OR Delhi, whose salary is greater than 60,000.
select * 
from employees 
where (city = 'Hyderabad' or city = 'Delhi') and salary > 60000;

-- Employees younger than 30 AND department ID is not 1.
select * 
from employees 
where age < 30 and not department_id = 1;

-- Employees whose salary is at most 40,000 OR age is greater than 32.
select * 
from employees 
where salary <= 40000 or age > 32;

-- Employees not in Mumbai AND salary is greater than 50,000.
select * 
from employees 
where not city = 'Mumbai' and salary > 50000;

-- Employees in department 1 AND younger than 30.
select * 
from employees 
where department_id = 1 and age < 30;

-- Employees in Pune OR salary is less than 35,000.
select * 
from employees 
where city = 'Pune' or salary < 35000;

-- Employees aged over 25 and under 35, with salary at least 50,000.
select * 
from employees 
where age > 25 and age < 35 and salary >= 50000;

-- Employees whose department ID is not 3 AND salary is less than 70,000.
select * 
from employees 
where not department_id = 3 and salary < 70000;

-- Employees aged at most 25 OR in Mumbai, with salary not equal to 30,000.
select * 
from employees 
where (age <= 25 or city = 'Mumbai') and salary != 30000;

-- Orders whose amount is greater than 3,000 AND status is Completed.
select * 
from orders 
where amount > 3000 and status = 'Completed';

-- Orders whose status is Pending OR Cancelled.
select * 
from orders 
where status = 'Pending' or status = 'Cancelled';

-- Orders whose amount is less than 5,000 AND date is after 2024-03-01.
select * 
from orders 
where amount < 5000 and order_date > '2024-03-01';

-- Orders whose customer ID is greater than 202 AND amount is at least 3,000.
select * 
from orders 
where customer_id > 202 and amount >= 3000;

-- Orders whose status is not Completed AND amount is greater than 1,500.
select * 
from orders 
where not status = 'Completed' and amount > 1500;

-- Customers in Pune OR Hyderabad.
select * 
from customers 
where city = 'Pune' or city = 'Hyderabad';

-- Customers who signed up after 2023-01-01 AND live in Pune.
select * 
from customers 
where signup_date > '2023-01-01' and city = 'Pune';

-- Customers whose ID is greater than 202 AND signup date is before 2024-01-01.
select * 
from customers 
where customer_id > 202 and signup_date < '2024-01-01';

-- Departments located in Mumbai OR Delhi.
select * 
from departments 
where location = 'Mumbai' or location = 'Delhi';

-- Departments not in Pune AND department ID is less than 5.
select * 
from departments 
where not location = 'Pune' and department_id < 5;

-- Employee names, salaries, and cities for employees earning over 60,000 AND living in Mumbai or Delhi.
select employee_name, salary, city 
from employees 
where salary > 60000 and (city = 'Mumbai' or city = 'Delhi');

-- Employee names, ages, and department IDs for employees younger than 30 AND in department 1 or 5.
select employee_name, age, department_id 
from employees 
where age < 30 and (department_id = 1 or department_id = 5);

-- Employees earning over 40,000 AND younger than 30 AND not living in Pune.
select * 
from employees 
where salary > 40000 and age < 30 and not city = 'Pune';

-- Employees aged over 30 OR earning under 40,000, excluding those in Mumbai.
select * 
from employees 
where (age > 30 or salary < 40000) and not city = 'Mumbai';

-- Employees not in department 2 AND earning at least 50,000 AND younger than 35.
select * 
from employees 
where not department_id = 2 and salary >= 50000 and age < 35;

-- Orders over 2,000 AND not Cancelled AND dated before 2024-06-01.
select * 
from orders 
where amount > 2000 and not status = 'Cancelled' and order_date < '2024-06-01';

-- Customers in Hyderabad or Pune AND signed up after 2023-01-01.
select * 
from customers 
where (city = 'Hyderabad' or city = 'Pune') and signup_date > '2023-01-01';

-- Employees in Delhi or Bengaluru, earning over 30,000 and under 70,000.
select * 
from employees 
where (city = 'Delhi' or city = 'Bengaluru') and (salary > 30000 and salary < 70000);

-- Employees earning over 70,000 OR younger than 25, excluding department 3.
select * 
from employees 
where (salary > 70000 or age < 25) and not department_id = 3;


-- Employees older than 25 AND earning over 40,000, who live in Pune OR belong to department 3.
select * 
from employees 
where age > 25 and salary > 40000 and (city = 'Pune' or department_id = 3);
