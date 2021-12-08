use employees_mod;

SELECT 
    YEAR(d.from_date) calender,
    e.gender gender,
    COUNT(d.from_date) num_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON e.emp_no = d.emp_no
GROUP BY calender , gender
HAVING calender >= 1990
ORDER BY calender ASC;



SELECT 
    YEAR(from_date) calender,
    e.gender gender,
    COUNT(from_date) num_of_employees
FROM
    t_dept_emp
        JOIN
    t_employees e ON e.emp_no = t_dept_emp.emp_no
GROUP BY calender , gender
HAVING calender >= 1990
ORDER BY calender ASC; 
    

SELECT 
    YEAR(from_date) calender,
    e.gender gender,
    COUNT(from_date) num_of_employees
FROM
    t_dept_emp
        JOIN
    t_employees e ON e.emp_no = t_dept_emp.emp_no
WHERE
    YEAR(t_dept_emp.from_date) >= 1990
GROUP BY calender , e.gender
ORDER BY calender ASC; 
    

    
    
    
    
    