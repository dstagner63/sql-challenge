-- Code for #1 list for each employee; employee number, last name, first name, sex, and salary. Join employees and salaries tables for this one.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
left join salaries 
on employees.emp_no = salaries.emp_no;

-- Code for #2 list of first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31' 
order by hire_date ASC;

-- Code for #3 list the manager of each dept with the following: department number, department name, the manager's employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, dept_employee.emp_no, employees.last_name, employees.first_name 
FROM departments 
INNER JOIN dept_employee
      ON departments.dept_no = dept_employee.dept_no
INNER JOIN employees
      ON dept_employee.emp_no=employees.emp_no
WHERE emp_title_id like 'm%'; 
	  
-- Code for #4 list the department of each employee with the following information: employee number, last name, first name, and department name.	  
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments 
INNER JOIN dept_employee
      ON departments.dept_no = dept_employee.dept_no
INNER JOIN employees
      ON dept_employee.emp_no=employees.emp_no;

-- Code for #5 list first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B".
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' and last_name like 'B%';

-- Code for #6 list all employees in the Sales department, including employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments 
INNER JOIN dept_employee
      ON departments.dept_no = dept_employee.dept_no
INNER JOIN employees
      ON dept_employee.emp_no=employees.emp_no
WHERE dept_name = 'Sales';

-- Code for #7 list all employees in the Sales and Development departments, including employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM departments 
INNER JOIN dept_employee
      ON departments.dept_no = dept_employee.dept_no
INNER JOIN employees
      ON dept_employee.emp_no = employees.emp_no
WHERE dept_name = 'Sales' 
	or dept_name = 'Development';

-- Code for #8 in descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name) AS Frequency  
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;







