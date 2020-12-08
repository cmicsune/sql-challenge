-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  "Employees".emp_no,
        "Employees".last_name,
        "Employees".first_name,
        "Employees".sex,
        "Salaries".salary
FROM "Employees"
    LEFT JOIN "Salaries"
    ON ("Employees".emp_no = "Salaries".emp_no)
ORDER BY "Employees".emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT "Dept_Manager".dept_id,
		"Dept_Manager".emp_no,
		"Departments".dept_name,
		"Employees".last_name,
		"Employees".first_name
FROM "Dept_Manager"
	INNER JOIN "Departments" 
	ON ("Dept_Manager".dept_id="Departments".dept_id)
	INNER JOIN "Employees"
	ON ("Dept_Manager".emp_no="Employees".emp_no);
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT "Departments".dept_name,
		"Employees".last_name,
		"Employees".first_name,
		"Employees".emp_no
FROM "Employees" 
	INNER JOIN "Dept_emp"
	ON ("Employees".emp_no="Dept_emp".emp_no)
	INNER JOIN "Departments" 
	ON ("Departments".dept_id="Dept_emp".dept_id)
	ORDER BY "Employees".emp_no;
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.