SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        employees.sex,
        sal.salary
FROM Employees as employees
    LEFT JOIN Salaries as sal
    ON (employees.emp_no = sal.emp_no)
ORDER BY employees.emp_no;

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT  dema.dept_no,
        dep.dept_name,
        dema.emp_no,
        emp.last_name,
        emp.first_name
FROM Department_Manager AS dema
    INNER JOIN Departments AS dep
        ON (dema.dept_no = dep.dept_no)
    INNER JOIN Employees AS emp
        ON (dema.emp_no = emp.emp_no);
		
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dep.dept_name
FROM Employees AS e
    INNER JOIN Department_Employees AS depep
        ON (emp.emp_no = depep.emp_no)
    INNER JOIN Departments AS dep
        ON (depep.dept_no = dep.dept_no)
ORDER BY emp.emp_no;

SELECT first_name, last_name, birth_date, sex
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dep.dept_name
FROM Employees AS emp
    INNER JOIN Department_Employees AS depep
        ON (emp.emp_no = depep.emp_no)
    INNER JOIN Departments AS dep
        ON (depep.dept_no = dep.dept_no)
WHERE dep.dept_name = 'Sales'
ORDER BY emp.emp_no;

SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        dep.dept_name
FROM Employees AS emp
    INNER JOIN Department_Employees AS depep
        ON (emp.emp_no = depep.emp_no)
    INNER JOIN Departments AS dep
        ON (depep.dept_no = dep.dept_no)
WHERE dep.dept_name IN ('Sales', 'Development')
ORDER BY emp.emp_no;

SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
