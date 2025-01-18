- 1. List the employee number, last name, first name, sex, and salary of each employee.
Select emp_no, last_name, first_name, sex,
		(Select salaries.salary
		From salaries
		Where employees.emp_no = salaries.emp_no) AS "Salary"
From employees;

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
Where TO_DATE(hire_date, 'MM/DD/YYYY') between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select dm.dept_no, d.dept_name, dm.emp_no, e.last_name,e.first_name
From dept_manager dm
Inner Join departments d
On dm.dept_no = d.dept_no
Inner Join employees e
On dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Select e.emp_no, e.last_name, e.first_name, de.dept_no,
		(Select d.dept_name
		From departments d
		Where de.dept_no = d.dept_no)
From employees e
Inner Join dept_emp de
On e.emp_no = de.emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees
WHERE first_name = 'Hercules'
And last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
Select de.emp_no, e.last_name, e.first_name
From dept_emp de
Inner Join employees e
On de.emp_no = e.emp_no
Where de.dept_no = 'd007'
Order by de.emp_no;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name,
		(Select d.dept_name
		 From departments d
		 WHERE de.dept_no = d.dept_no)
From dept_emp de
Inner Join employees e
On de.emp_no = e.emp_no
Where de.dept_no = 'd007' -- Sales Department
Or de.dept_no = 'd005'; -- Development Department

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
Select last_name, Count(last_name) AS "Count of Last Name"
From employees
Group By last_name
Order By "Count of Last Name" DESC;