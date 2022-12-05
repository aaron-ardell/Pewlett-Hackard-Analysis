SELECT em.emp_no,
	em.first_name,
	em.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
INTO retirement_titles
FROM employees AS em
INNER JOIN titles AS tt 
ON em.emp_no = tt.emp_no
WHERE em.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles as re
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;

SELECT DISTINCT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;