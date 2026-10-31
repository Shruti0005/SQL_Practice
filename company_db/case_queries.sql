-- Display each employee’s name and salary, along with a new column salary_level: 'High' if salary is greater than 70000, otherwise 'Normal'.
select employee_name, salary, 
       case 
           when salary > 70000 then 'High' 
           else 'Normal' 
       end as salary_level 
from employees;

-- Display each employee’s name and age, classifying them as 'Adult' if age is at least 30 and 'Young' otherwise.
select employee_name, age, 
       case 
           when age >= 30 then 'Adult' 
           else 'Young' 
       end as age_level 
from employees;

-- Display each employee’s name and salary. Label salaries below 40000 as 'Low', salaries from 40000 through 70000 as 'Medium', and salaries above 70000 as 'High'.
select employee_name, salary, 
       case 
           when salary < 40000 then 'Low' 
           when salary between 40000 and 70000 then 'Medium' 
           else 'High' 
       end as salary_level 
from employees;

-- Display each employee’s name and a new column experience_group: 'Senior' if hired before 2020-01-01, otherwise 'Junior'.
select employee_name, 
       case 
           when hire_date < '2020-01-01' then 'Senior' 
           else 'Junior' 
       end as experience_group 
from employees;

-- Display each order’s ID and amount, labeling orders of at least 5000 as 'Large Order' and all others as 'Small Order'.
select order_id, amount, 
       case 
           when amount >= 5000 then 'Large Order' 
           else 'Small Order' 
       end as order_label 
from orders;

-- Display each order’s ID and status, labeling 'Completed' orders as 'Successful' and all other statuses as 'Not Successful'.
select order_id, status, 
       case 
           when status = 'Completed' then 'Successful' 
           else 'Not Successful' 
       end as status_label
from orders;

-- Display each customer’s name and city, labeling customers from Hyderabad as 'Local' and all others as 'Other City'.
select customer_name, city, 
       case 
           when city = 'Hyderabad' then 'Local' 
           else 'Other City' 
       end as customer_label 
from customers;

-- Display each employee’s name and department ID. If department_id is NULL, show 'Unassigned'; otherwise, show 'Assigned'.
select employee_name, department_id, 
       case 
           when department_id is null then 'Unassigned' 
           else 'Assigned' 
       end as employee_department 
from employees;

-- Display each employee’s name and salary, labeling salaries of at least 60000 as 'Eligible' and lower salaries as 'Not Eligible'.
select employee_name, salary, 
       case 
           when salary >= 60000 then 'Eligible' 
           else 'Not Eligible' 
       end as salary_lable 
from employees;

-- Display each order’s ID and amount, classifying amounts below 2000 as 'Low', from 2000 through 5000 as 'Medium', and above 5000 as 'High'.
select order_id, amount, 
       case 
           when amount < 2000 then 'Low' 
           when amount between 2000 and 5000 then 'Medium' 
           else 'High' 
       end as classifyed_ammount 
from orders;

-- Display employee names and salaries, but show 'Top Salary' for salaries above 80000 and 'Regular Salary' otherwise.
select employee_name, salary, 
       case 
           when salary > 80000 then 'Top Salary' 
           else 'Regular Salary' 
       end as Salary_lable 
from employees;

-- Display employee names and ages, classifying ages below 25 as 'Youngest Group', ages from 25 through 30 as 'Middle Group', and ages above 30 as 'Older Group'.
select employee_name, age, 
       case 
           when age < 25 then 'Youngest Group' 
           when age between 25 and 30 then 'Middle Group' 
           else 'Older Group' 
       end as age_classify 
from employees;

-- Display each order’s ID and amount, labeling orders of at least 4000 as 'Target Met' and others as 'Target Not Met'. Show only orders with amount greater than 2000.
select order_id, amount, 
       case 
           when amount >= 4000 then 'Target Met' 
           else 'Target Not Met' 
       end as order_label 
from orders 
where amount > 2000;

-- Display employee names and salaries with a salary_status column: 'High' for salaries above 70000 and 'Low or Medium' otherwise. Sort by salary from highest to lowest.
select employee_name, salary, 
       case 
           when salary > 70000 then 'High' 
           else 'Low or Medium' 
       end as salary_status 
from employees 
order by salary desc;

-- Display order IDs and statuses with a delivery_result column: 'Completed' for completed orders, 'In Progress' for pending orders, and 'Unsuccessful' for cancelled orders.
select order_id, status, 
       case 
           when status = 'Completed' then 'Completed' 
           when status = 'Pending' then 'In Progress' 
           else 'Unsuccessful' 
       end as delivery_result 
from orders;

-- Display employee names and hire dates, labeling employees hired before 2022-01-01 as 'Earlier Hire' and the rest as 'Recent Hire'. Show only employees hired after 2019-01-01.
select employee_name, hire_date, 
       case 
           when hire_date < '2022-01-01' then 'Earlier Hire' 
           else 'Recent Hire' 
       end as employee_lable 
from employees 
where hire_date > '2019-01-01';

-- Display customer names and cities, classifying Hyderabad and Pune customers as 'Priority City' and all others as 'Other City'.
select customer_name, city, 
       case 
           when city in ('Hyderabad', 'Pune') then 'Priority City' 
           else 'Other City' 
       end as city_classify 
from customers;

-- Display employee names and salaries, assigning 'Bonus A' for salaries of at least 80000, 'Bonus B' for salaries from 50000 through 79999, and 'No Bonus' for salaries below 50000. Show only employees in department 1 or 3.
select employee_name, salary, 
       case 
           when salary >= 80000 then 'Bonus A' 
           when salary between 50000 and 79999 then 'Bonus B' 
           else 'No Bonus' end as bonus_status 
from employees 
where department_id in (1, 3);

-- Display each order’s ID, amount, and a column that labels amounts above 5000 as 'Premium', otherwise 'Standard'. Sort by this label and then amount in descending order.
select order_id, amount, 
       case 
           when amount > 5000 then 'Premium' 
           else 'Standard' 
       end as amount_label 
from orders 
order by amount_label asc, amount desc;

-- Display employee names and department IDs, showing 'No Department' when the department ID is NULL and 'Department Available' otherwise. Show employees whose city is Mumbai or Chennai.
select employee_name, department_id, 
       case 
           when department_id is null then 'No Department' 
           else 'Department Availablle' 
       end as department_status 
from employees 
where city in ('Mumbai', 'Chennai');

-- Count how many employees have salaries of at least 60000 and how many have salaries below 60000, using CASE inside aggregate functions.
select count(case when salary >= 60000 then 1 end) as higher_salary, 
       count(case when salary < 60000 then 1 end) as lower_salary 
from employees;

-- Count completed, pending, and cancelled orders separately using conditional aggregation with CASE.
select count(case when status = 'Completed' then 1 end) as completed_order, 
       count(case when status = 'Pending' then 1 end) as pending_order, 
       count(case when status = 'Cancelled' then 1 end) as cancelled_order 
from orders;

-- Display each department ID and count how many employees in that department have salaries of at least 60000. Exclude employees whose department ID is NULL.
select department_id, 
       count(case when salary >= 60000 then 1 end) as higher_salary 
from employees 
where department_id is not null 
group by department_id;

-- Calculate the total order amount for completed orders and the total order amount for pending orders using CASE and aggregate functions.
select sum(case when status = 'Completed' then amount end) as total_completed_order, 
       sum(case when status = 'Pending' then amount end) as total_pending_order 
from orders;

-- Display each department ID and classify its employees as 'High Paid' when salary is above 70000 and 'Not High Paid' otherwise. Group by department ID and classification, excluding unassigned employees.
select department_id, 
       case
           when salary > 70000 then 'High Paid'
           else 'Not High Paid'
       end as salary_labale,
       count(employee_id) as total_employee
from employees 
where department_id is not null 
group by department_id,
         case
             when salary > 70000 then 'High Paid'
             else 'Not High Paid'
         end;

-- Count employees hired before 2022-01-01 and employees hired on or after that date using conditional aggregation.
select count(case when hire_date < '2022-01-01' then 1 end) as hired_before_2022, 
       count(case when hire_date >= '2022-01-01' then 1 end) as hired_on_or_after_2022 
from employees;

-- Display each order status and the total amount for that status, along with a CASE column that labels totals above 10000 as 'High Total' and all other totals as 'Low Total'.
select status, 
       sum(amount) as total_amount, 
       case 
           when sum(amount) > 10000 then 'High total' 
           else 'Low total' 
       end as amount_labeles 
from orders group by status;

-- Display each department ID and the average salary, along with a CASE classification: 'High Average' if the average salary is above 70000 and 'Standard Average' otherwise. Exclude unassigned employees.
select department_id, 
       avg(salary) as average_salary, 
       case 
           when avg(salary) > 70000 then 'High Average' 
           else 'Standard Average' 
       end as average_salary_labale 
from employees 
where department_id is not null
group by department_id;

-- Calculate the total salary of employees aged below 30 and the total salary of employees aged 30 or above, using conditional aggregation.
select sum(case when age < 30 then salary end) as below_30_total_salary, 
       sum(case when age >= 30 then salary end) as age_30_or_above_total_salary 
from employees;

-- For each order status, count orders with amounts of at least 5000 and orders with amounts below 5000 using CASE and aggregate functions.
select status, 
       count(case when amount >= 5000 then 1 end) as at_least_5000_amount, 
       count(case when amount < 5000 then 1 end) as below_5000_amount 
from orders 
group by status;

-- Display each employee’s name, age, and salary. Classify an employee as 'High Paid Senior' if salary is above 70000 and age is at least 30, 'High Paid Junior' if salary is above 70000 and age is below 30, and 'Other Employee' otherwise.
select employee_name, age, salary, 
       case 
           when salary > 70000 and age >= 30 then 'High Paid Senior' 
           when salary > 70000 and age < 30 then 'High Paid Junior' 
           else 'Other Employee' 
       end as classify_employee 
from employees;

-- Display each employee’s name and salary, assigning 'Level 1' for salary below 40000, 'Level 2' for salary from 40000 through 59999, 'Level 3' for salary from 60000 through 79999, and 'Level 4' for salary of at least 80000.
select employee_name, salary, 
       case 
           when salary < 40000 then 'Level 1' 
           when salary between 40000 and 59999 then 'Level 2' 
           when salary between 60000 and 79999 then 'Level 3' 
           when salary >= 80000 then 'Level 4' 
       end as employee_salary_levels 
from employees;

-- Display each order’s ID, status, and amount. Label an order 'Successful Large Order' if it is completed and its amount is at least 5000, 'Successful Small Order' if completed and below 5000, and 'Unsuccessful Order' for all other statuses.
select order_id, status, amount, 
       case 
           when status = 'Completed' and amount >= 5000 then 'Successful Large Order' 
           when status = 'Completed' and amount < 5000 then 'Successful Small Order' 
           else 'Unsuccessful Order' 
       end as orders_status 
from orders;

-- Display each employee’s name and hire date. Classify employees hired before 2020-01-01 as 'Experienced', those hired from 2020-01-01 through 2022-12-31 as 'Moderate Experience', and those hired on or after 2023-01-01 as 'New Employee'.
select employee_name, hire_date, 
       case 
           when hire_date < '2020-01-01' then 'Experienced' 
           when hire_date between '2020-01-01' and '2022-12-31' then 'Moderate Experience' 
           when hire_date >= '2023-01-01' then 'New Employee' 
       end as classify_employee_experiance 
from employees;

-- Count employees in each city who earn at least 60000, and those who earn below 60000, using conditional aggregation. Group by city.
select city, 
       count(case when salary >= 60000 then 1 end) as at_least_60000_emp, 
       count(case when salary < 60000 then 1 end) as below_60000_emp 
from employees 
group by city;

-- Display each department ID and total salary expense. Add a classification that labels total salary expense above 150000 as 'High Expense' and all other totals as 'Normal Expense'. Exclude employees without a department.
select department_id, sum(salary), 
       case 
           when sum(salary) > 150000 then 'High Expense' 
           else 'Normal Expense' 
       end as salary_expanse 
from employees 
where department_id is not null 
group by department_id;

-- Display each order’s ID and amount, assigning a discount category of 'Discount 20%' for amounts above 6000, 'Discount 10%' for amounts from 3000 through 6000, and 'No Discount' for amounts below 3000.
select order_id, amount, 
       case 
           when amount > 6000 then 'Discount 20%' 
           when amount between 3000 and 6000 then 'Discount 10%' 
           else 'No Discount' 
       end as discount_category 
from orders;

-- Display employee names and salaries, classifying employees as 'High Paid IT' if they belong to department 1 and earn above 70000, 'Other IT Employee' if they belong to department 1 but do not meet that salary condition, and 'Non-IT Employee' otherwise.
select employee_name, salary, 
       case 
           when department_id = 1 and salary > 70000 then 'High Paid IT' 
           when department_id = 1 then 'Other IT Employee' 
           else 'Non-IT Employee' 
       end as classifying_employee 
from employees;

-- Count orders in each status and calculate the total amount for orders of at least 4000 within each status. Use CASE with aggregate functions and group by status.
select status, count(order_id), 
       sum(case when amount >= 4000 then amount end) as total_amount 
from orders 
group by status;

-- Display employee names, ages, salaries, and a performance_category column. Assign 'Category A' if salary is at least 80000 and age is at least 30, 'Category B' if salary is at least 60000, and 'Category C' otherwise. Make sure the conditions are evaluated in the correct order.
select employee_name, age, salary, 
       case 
          when salary >= 80000 and age >= 30 then 'Category A' 
          when salary >= 60000 then 'Category B' 
          else 'Category C' 
       end as performance_category 
from employees;
