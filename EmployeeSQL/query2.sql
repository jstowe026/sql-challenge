--Manually imported data into tables
select * from departments;
select * from employees;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from titles;

--List the following details of each employee: employee number, last name, first name, gender, and salary
-- Perform an INNER JOIN on employee and salaries tables
SELECT employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.gender, 
		salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

--List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date from employees 
where hire_date >= '1/1/1986' 
and hire_date <= '12/31/1986';


--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
-- Perform an INNER JOIN on dept_manager and departments and employees tables
SELECT dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no, 
		employees.last_name,
		employees.first_name,
		dept_manager.from_date,
		dept_manager.to_date
FROM departments
INNER JOIN dept_manager ON
dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no=employees.emp_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.dept_no,
		departments.dept_name,
		employees.emp_no, 
		employees.last_name,
		employees.first_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, last_name, first_name from employees 
where first_name = 'Hercules'
and last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT dept_emp.dept_no,
		departments.dept_name,
		employees.emp_no, 
		employees.last_name,
		employees.first_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.dept_no,
		departments.dept_name,
		employees.emp_no, 
		employees.last_name,
		employees.first_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(emp_no) AS "Total Employees"
FROM employees
GROUP BY last_name
ORDER BY "Total Employees" DESC;
