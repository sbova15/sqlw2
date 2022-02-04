select count(e.emp_no) as 'Employees Born After 1965-01-01', t.title 
from employees as e
inner join titles as t
on t.emp_no = e.emp_no
where e.birth_date > '1965-01-01'
group by t.title;


select AVG(s.salary) as 'Average Salary', t.title 
from salaries as s
inner join titles as t
on t.emp_no = s.emp_no
group by t.title;

select sum(s.salary)'Total Salary 1990-1992', d.dept_name as 'Department'
from salaries s
inner join dept_emp de
on de.emp_no = s.emp_no
inner join departments d
on d.dept_no = de.dept_no
where s.from_date between '1990-01-01' and '1992-01-01'
and d.dept_name = 'Marketing'
group by d.dept_name;