CREATE TABLE departments (
    dept_no varchar(10)   NOT NULL,
    dept_name varchar(100)   NOT NULL,
    PRIMARY KEY (dept_no)
);

select * from departments;

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(25)   NOT NULL,
    last_name varchar(25)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees;

CREATE TABLE dept_emp (
	emp_no INT   NOT NULL,
    dept_no varchar(10)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

select * from dept_emp;

CREATE TABLE dept_manager (
	dept_no varchar(10)   NOT NULL,
    emp_no integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

select * from dept_manager;

CREATE TABLE salaries (
	emp_no integer   NOT NULL,
    salary integer   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

select * from salaries;

CREATE TABLE titles (
	emp_no integer   NOT NULL,
    title varchar(50)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

select * from titles;