insert into employee(emp_id, emp_nm, email, hire_date, edu_id)
select distinct s.emp_id, s.emp_nm , s.email, s.hire_dt, e.edu_id  
from hr_stg s
join education e
on s."education level" = e.edu_lvl;


insert into department(dept_nm)
select distinct department from hr_stg;

insert into education(edu_lvl)
select distinct "education level" from hr_stg;

insert into job(job_title)
select distinct job_title from hr_stg;

insert into location(loc_nm, address, city, state)
select distinct location, address, city, state from hr_stg;

insert into salary(salary)
select distinct salary from hr_stg ; 

insert into employment(emp_id, dept_id, manager_id, job_id, loc_id, salary_id, start_date, end_date)
select e.emp_id, d.dept_id, m.emp_id, j.job_id, l.loc_id, s.salary_id, st.start_dt, st.end_dt 
from hr_stg as st
join employee as e 
on st.emp_id = e.emp_id
join department as d
on st.department = d.dept_nm
join employee as m
ON st.manager = m.emp_nm
join job as j 
on st.job_title = j.job_title
join location as l 
on st.location = l.loc_nm 
join salary as s
on st.salary = s.salary ;