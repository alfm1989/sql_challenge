--Week 9- Homework

--1) List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e left join salaries s on e.emp_no=s.emp_no order by e.emp_no;

--2) List employees who were hired in 1986.
select *from employees where hire_date>'01/01/1986' order by emp_no, hire_date;

--3) List the manager of each department with the following information: 
--department number, department name, the manager's employee number,
--last name, first name, and start and end employment dates.
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from dept_manager m left join employees e on m.emp_no=e.emp_no
left join departament d on d.dept_no=m.dept_no order by e.emp_no, m.dept_no,m.from_date;

--4) List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select n.emp_no, e.last_name, e.first_name, d.dept_name
from dept_name n left join employees e on n.emp_no=e.emp_no
left join departament d on d.dept_no=n.dept_no order by n.emp_no, n.dept_no;

--5) List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, first_name, last_name from employees 
where first_name='Hercules' and last_name like 'B%' order by emp_no, last_name;

--6) List all employees in the Sales department,
--including their employee number, last name, first name, and department name.
select n.emp_no, e.last_name, e.first_name, d.dept_name from
dept_name n left join employees e on n.emp_no=e.emp_no
left join departament d on d.dept_no=n.dept_no where d.dept_name='Sales'
order by n.emp_no;

--7) List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
select n.emp_no, e.last_name, e.first_name, d.dept_name from
dept_name n left join employees e on n.emp_no=e.emp_no
left join departament d on d.dept_no=n.dept_no where d.dept_name in ('Sales','Development')
order by d.dept_name, n.emp_no;

--8) In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
select last_name, count (last_name) as frequency_count 
from employees group by last_name order by frequency_count DESC;


