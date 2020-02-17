--List the following details of each employee: employee number, last name, first name, gender, 
--and salary.
--Query employees and salaries data tables:

SELECT * FROM employees;
SELECT * FROM salaries;

--join statement to query for all employees employee number, last name, first name, gender & salary

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

--List employees who were hired in 1986.
--Query all employee records between 1.1.1986 - 12.31.1986

SELECT * FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and 
--end employment dates.

--Query departments, dept_manager, employees and dept_emp data tables:
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM dept_emp;

--join statement to query for all department managers number,department name, manager's employee number, last name, first name, 
--start and end employment dates.

SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, de.from_date, de.to_date
FROM departments d
INNER JOIN dept_manager dm
ON d.dept_no = dm.dept_no
INNER JOIN employees e
ON dm.emp_no = e.emp_no
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no;

--List the department of each employee with the following information: employee number, last name, 
--first name, and department name.

SELECT * FROM employees;
SELECT * FROM dept_emp;

--join statement to query the departments for employees with employee number, last name, first name, 
--department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_manager dm 
ON e.emp_no = dm.emp_no
INNER JOIN departments d
ON dm.dept_no = d.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' 

--List all employees in the Sales and Development departments, including their employee number, last name, first name, 
--and department name.
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM employees;

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
ON e.emp_no = de.emp_no
INNER JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
