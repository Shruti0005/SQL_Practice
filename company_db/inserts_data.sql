
-- Departments
INSERT INTO departments VALUES
(1, 'IT', 'Hyderabad'),
(2, 'HR', 'Pune'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Bengaluru'),
(5, 'Sales', 'Delhi');

-- Employees
INSERT INTO employees VALUES
(101, 'Amit', 25, 45000, 1, NULL, '2022-01-15', 'Hyderabad'),
(102, 'Priya', 28, 60000, 1, 101, '2021-06-10', 'Pune'),
(103, 'Rahul', 32, 75000, 3, NULL, '2019-03-20', 'Mumbai'),
(104, 'Sneha', 26, 50000, 2, NULL, '2023-02-05', 'Pune'),
(105, 'Karan', 35, 90000, 3, 103, '2018-11-12', 'Mumbai'),
(106, 'Neha', 24, 35000, 4, NULL, '2024-01-08', 'Bengaluru'),
(107, 'Arjun', 29, 65000, 5, NULL, '2020-07-19', 'Delhi'),
(108, 'Pooja', 31, 80000, 1, 102, '2017-09-25', 'Hyderabad'),
(109, 'Vikas', 27, 40000, NULL, NULL, '2022-12-01', 'Chennai'),
(110, 'Ananya', 30, 70000, 5, 107, '2021-04-14', 'Delhi'),
(111, 'Rohan', 23, 30000, 2, 104, '2024-06-01', 'Pune'),
(112, 'Meera', 34, 85000, 3, 103, '2019-08-16', 'Mumbai');

-- Customers
INSERT INTO customers VALUES
(201, 'Riya', 'Hyderabad', '2023-01-10'),
(202, 'Kabir', 'Pune', '2023-03-15'),
(203, 'Ishita', 'Mumbai', '2022-11-20'),
(204, 'Dev', 'Delhi', '2024-02-05'),
(205, 'Tara', 'Bengaluru', '2023-07-12'),
(206, 'Aditya', 'Chennai', '2024-05-18'),
(207, 'Nisha', 'Hyderabad', '2022-09-01'),
(208, 'Varun', 'Pune', '2024-01-25');

-- Orders
INSERT INTO orders VALUES
(301, 201, '2024-01-05', 2500, 'Completed'),
(302, 202, '2024-01-10', 4000, 'Completed'),
(303, 201, '2024-02-15', 1500, 'Pending'),
(304, 203, '2024-03-01', 7000, 'Completed'),
(305, 204, '2024-03-12', 3000, 'Cancelled'),
(306, 205, '2024-04-08', 5500, 'Completed'),
(307, 202, '2024-04-20', 2000, 'Pending'),
(308, 207, '2024-05-11', 8000, 'Completed'),
(309, 203, '2024-05-22', 3500, 'Pending'),
(310, 208, '2024-06-03', 6000, 'Completed'),
(311, 201, '2024-06-15', 4500, 'Completed'),
(312, 206, '2024-07-01', 1000, 'Cancelled');
