create table employee (
Emp_id varchar(8) primary key,
Emp_nm varchar(50),
Email varchar(50),
hire_date date,
Edu_id int references Education(Edu_id)
);

create table Department(
Dept_id SERIAL primary key,
Dept_nm varchar(50)
);

create table Job(
Job_id serial primary key,
Job_title varchar(50));

create table Education(
Edu_id serial primary key,
Edu_lvl varchar(50));

create table Salary(
Salary_id serial primary key,
Salary int);

create table Location(
loc_id serial primary key,
loc_nm varchar(50),
Address varchar(100),
City varchar(50),
State varchar(3));

create table Employment(
Emp_id varchar(8) references Employee(Emp_id),
Dept_id int references Department(Dept_id),
Manager_id varchar(8) references Employee(Emp_id),
Job_id int references Job(Job_id),
Loc_id int references Location(loc_id),
Salary_id int references Salary(Salary_id),
start_date date,
end_date date);



create table hr_stg(
emp_id varchar(8),
emp_nm varchar(50),
email varchar(100),
hire_dt date,
job_title varchar(50),
salary money,
department varchar(50),
manager varchar(50),
start_dt date,
end_dt date,
location varchar(50),
address varchar(100),
city varchar(50),
state varchar(2),
"education level" varchar(50) 
);
 
