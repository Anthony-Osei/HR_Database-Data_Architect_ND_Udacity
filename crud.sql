
select em.emp_id, em.emp_nm, j.job_title, d.dept_nm
from employee em
join employment e 
on e.emp_id = em.emp_id
join job j 
on e.job_id = j.job_id
join department d 
on e.dept_id = d.dept_id ;


insert into job(job_title)
values('Web Programmer');

select * from job;


update job 
set job_title = 'Web Developer'
where job_title = 'Web Programmer';

select * from job;


delete from job 
where job_title = 'Web Developer';

select * from job;


select d.dept_nm, count(em.emp_id)
from department d 
join employment e 
on d.dept_id = e.dept_id 
join employee em 
on em.emp_id = e.emp_id
where e.end_date >= current_date or e.end_date is null 
group by d.dept_nm ;



select em.emp_nm, j.job_title, d.dept_nm, m.emp_nm as manager, e.start_date, e.end_date  
from employee em
join employment e 
on em.emp_id = e.emp_id 
join job j 
on e.job_id = j.job_id 
join department d 
on e.dept_id = d.dept_id 
join employee m 
on e.manager_id  = m.emp_id
where em.emp_nm = 'Toni Lembeck'; 



create view view_file as select em.emp_id, em.emp_nm, em.email, em.hire_date, j.job_title, s.salary, 
d.dept_nm, m.emp_nm as manager, e.start_date,
e.end_date, l.loc_nm, l.address, l.city, l.state, ed.edu_lvl
from employment e 
join employee em 
on e.emp_id = em.emp_id 
join job j 
on e.job_id = j.job_id 
join salary s 
on e.salary_id = s.salary_id 
join department d 
on e.dept_id = d.dept_id 
join employee m 
on e.manager_id = m.emp_id 
join location l
on e.loc_id = l.loc_id 
join education ed 
on em.edu_id = ed.edu_id; 

select * from view_file ;