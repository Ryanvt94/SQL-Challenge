-- Use the information you have to create a table schema for each of the six CSV files. 
-- Remember to specify data types, primary keys, foreign keys, and other constraints.

-- For the primary keys check to see if the column is unique, otherwise create a composite key. 
-- Which takes to primary keys in order to uniquely identify a row.
-- Be sure to create tables in the correct order to handle foreign keys.

-- drop table titles CASCADE;
create table if not exists titles(
	title_id varchar,
	title varchar(25),
	PRIMARY KEY(title_id));

-- drop table deptartments CASCADE;
create table if not exists departments(
	dept_no varchar(25),
	dept_name varchar(25),
	Primary Key (dept_no));

-- drop table employees CASCADE;
create table if not exists employees(
	emp_no int,
	emp_title_id varchar (30),
	birth_date date,
	first_name varchar (30),
	last_name varchar(30),
	sex varchar (5),
	hire_date date,
	Primary Key (emp_no),
	Foreign Key (emp_title_id) References titles(title_id));

-- drop table dept_emp CASCADE;
create table if not exists dept_emp(
	emp_no int,
	dept_no varchar(10),
	Foreign key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no));

-- drop table dept_manager CASCADE;
create table if not exists dept_manager(
	dept_no varchar(10),
	emp_no int,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no));

-- drop table salaries CASCADE;
create table if not exists salaries(
	emp_no int,
	salary int,
	Foreign Key (emp_no) References employees(emp_no));
	
	