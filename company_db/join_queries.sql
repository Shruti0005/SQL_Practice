-- Display employee names and their department names.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display employee names and department locations.
select e.employee_name, d.location 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display employee IDs, employee names, and department names.
select e.employee_id, e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display department names and the names of employees working in each department.
select d.department_name, e.employee_name 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display employee names, salaries, and department names.
select e.employee_name, e.salary, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display employee names and department locations, but show only employees working in Hyderabad.
select e.employee_name, d.location 
from employees e join departments d 
on e.department_id = d.department_id
e.city = 'Hyderabad';

-- Display employee names and department names for employees earning more than 60000.
select e.employee_name, d.department_name
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary > 60000;

-- Display employee names, department names, and department locations.
select e.employee_name, d.department_name, d.location 
from employees e join departments d 
on e.department_id = d.department_id;

-- Display employee names and department names, sorted alphabetically by employee name.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
order by e.employee_name;

-- Display employee names and department names, sorted by salary from highest to lowest.
select e.employee_name, d.department_name
from employees e join departments d 
on e.department_id = d.department_id 
order by e.salary desc;


-- Display employee names and department names for employees belonging to department 1.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
where e.department_id = 1;

-- Display employee names and department names for employees belonging to the Finance department.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
where d.department_name = 'Finance';

-- Display employee names and department locations for employees working in Mumbai.
select e.employee_name, d.location 
from employees e join departments d 
on e.department_id = d.department_id 
where d.location = 'Mumbai';

-- Display employee names, salaries, and department names for employees earning between 50000 and 80000.
select e.employee_name, e.salary, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary between 50000 and 80000;

-- Display employee names and department names for employees whose department location is Pune.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
where d.location = 'Pune';

-- Display employee names and department names for employees earning more than 70000, sorted by salary descending.
select e.employee_name, d.department_name 
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary > 70000
order by salary desc;

-- Display employee names, department names, and department locations for employees belonging to department 2 or department 3.
select e.employee_name, d.department_name, d.location
from employees e join departments d 
on e.department_id = d.department_id 
where e.department_id in (2, 3);

-- Display employee names and department names for employees whose names start with the letter 'A'.
select e.employee_name, d.department_name
from employees e join departments d 
on e.department_id = d.department_id 
where e.employee_name like 'A%';

-- Display employee names, department names, and salaries for employees earning less than 50000, sorted by employee name.
select e.employee_name, d.department_name, e.salary
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary < 50000
order by employee_name;

-- Display employee names and department names for employees working in departments located in Delhi or Mumbai.
select e.employee_name, d.department_name
from employees e join departments d 
on e.department_id = d.department_id 
where d.location in ('Delhi', 'Mumbai');


-- Display customer names and their order IDs.
select c.customer_name, o.order_id 
from customers c join orders o 
on c.customer_id = o.customer_id;

-- Display customer names and order amounts.
select c.customer_name, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id;

-- Display customer names, order IDs, and order dates.
select c.customer_name, o.order_id, o.order_date 
from customers c join orders o 
on c.customer_id = o.customer_id;

-- Display customer names and order statuses.
select c.customer_name, o.status 
from customers c join orders o 
on c.customer_id = o.customer_id;

-- Display customer names and order amounts for orders greater than 3000.
select c.customer_name, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.amount > 3000;

-- Display customer names and order IDs for completed orders.
select c.customer_name, o.order_id 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.status = 'Completed';

-- Display customer names, order dates, and amounts, sorted by order date.
select c.customer_name, o.order_date, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id 
order by order_date;

-- Display customer names and order amounts for customers from Hyderabad.
select c.customer_name, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id 
where c.city = 'Hyderabad';

-- Display customer names and order statuses for pending orders.
select c.customer_name, o.status 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.status = 'Pending';

-- Display customer names, order IDs, amounts, and statuses, sorted by amount from highest to lowest.
select c.customer_name, o.order_id, o.amount, o.status 
from customers c join orders o 
on c.customer_id = o.customer_id 
order by o.amount desc;


-- Display employee names, department names, and department locations for employees earning more than 60000 and working in Mumbai.
select e.employee_name, d.department_name, d.location 
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary > 60000 and e.city = 'Mumbai';

-- Display employee names, department names, and salaries for employees working in the IT or Finance department.
select e.employee_name, d.department_name, e.salary 
from employees e join departments d 
on e.department_id = d.department_id 
where d.department_name in ('IT', 'Finance');

-- Display department names and employee names for employees earning at least 80000.
select d.department_name, e.employee_name 
from employees e join departments d 
on e.department_id = d.department_id 
where e.salary >= 80000;

-- Display customer names and total order amounts for each customer's individual order. (Do not calculate a combined total; show each order.)
select c.customer_name, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id;

-- Display customer names and order IDs for orders placed during January 2024.
select c.customer_name, o.order_id 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.order_date between '2024-01-01' and '2024-01-31';

-- Display customer names and order amounts for completed orders of at least 5000.
select c.customer_name, o.amount 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.status = 'Completed' and o.amount >= 5000;

-- Display employee names, department names, and hire dates for employees hired after 2020-01-01.
select e.employee_name, d.department_name, e.hire_date 
from employees e join departments d 
on e.department_id = d.department_id 
where e.hire_date > '2020-01-01';

-- Display customer names, cities, order IDs, and order statuses for customers from Pune or Hyderabad.
select c.customer_name, c.city, o.order_id, o.status 
from customers c join orders o 
on c.customer_id = o.customer_id 
where c.city in ('Pune', 'Hyderabad');

-- Display employee names, department names, salaries, and department locations. Sort by department name and then salary descending.
select e.employee_name, d.department_name, e.salary, d.location 
from employees e join departments d 
on e.department_id = d.department_id 
order by d.department_name, salary desc;

-- Display customer names, order IDs, order amounts, and statuses for orders that are either Pending or Completed and have amounts greater than 3000.
select c.customer_name, o.order_id, o.amount, o.status 
from customers c join orders o 
on c.customer_id = o.customer_id 
where o.status in ('Pending', 'Completed') and o.amount > 3000;
