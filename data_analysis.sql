--1)Query to get employee number, last name, first name, sex, and salary by
--creating a inner join between employee and salaries tables
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

--2)Query to get employee number, last name, first name and hire date
--to find all employees hired in 1986
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date between '1986-01-01' and '1986-12-31';

--3)Query to list the manager of each department, department name, employee number, start and end dates, last
--and first name by joining department manager, employees, and departments tables
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
INNER JOIN employees AS e ON
e.emp_no = dm.emp_no
INNER JOIN departments AS d ON
d.dept_no = dm.dept_no;


--4)Query to list the department of each employee and find employee number, last name, and first name,
--by joining employee, department, and department employee tables
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;


--5)Query to find all employees with first name Hercules and last name starting with 
--B from the employee table
SELECT e.first_name, e.last_name
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';


--6)Query all employees numbers, last name, first name, and department name that 
--are in the sales deparment by joining employees, department employee, 
--and departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';


--7)Query all employees numbers, last name, first name, and department name that 
--are in the sales or development deparment by joining employees, department employee, 
--and departments table
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR  d.dept_name = 'Development';



--8)Query last name and the total counts of each by
--unique last name from employee table
SELECT e.last_name, COUNT(*) AS frequency
FROM employees AS e
GROUP BY e.last_name
ORDER BY frequency DESC;