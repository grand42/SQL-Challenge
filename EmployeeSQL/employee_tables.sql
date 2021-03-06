DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
    dept_no VARCHAR(220)   NOT NULL,
    dept_name VARCHAR(220)   NOT NULL,
    PRIMARY KEY (dept_no)
	
);
CREATE TABLE titles (
    title_id VARCHAR(220)   NOT NULL,
    title VARCHAR(220)   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title VARCHAR(220)   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(220)   NOT NULL,
    last_name VARCHAR(220)   NOT NULL,
    sex VARCHAR(220)   NOT NULL,
    hire_date date   NOT NULL,
   	PRIMARY KEY (emp_no),
    Foreign Key (emp_title) references titles(title_id)
);

CREATE TABLE dept_emp (
    emp_no integer   NOT NULL,
    dept_no VARCHAR(220)   NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(220)   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	foreign key(dept_no) references departments(dept_no),
	foreign key(emp_no) references employees(emp_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    PRIMARY KEY (emp_no)
);