-- Creating a retirement table for employees born between January 1, 1952 and December 31, 1955. It must hold their job titles.
SELECT em.emp_no,
	em.first_name,
	em.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
INTO retirement_titles
-- Joining tables together.
FROM employees AS em
INNER JOIN titles AS tt 
-- Joining on primary key, emp_no.
ON em.emp_no = tt.emp_no
-- Filtering by birthdays.
WHERE em.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
-- Organizing by the employee number.
ORDER BY em.emp_no;

-- Use Distinct with Orderby to remove duplicate rows of employee numbers. 
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
    last_name,
    title
INTO unique_titles
FROM retirement_titles as re
-- Ensuring we're only tracking active employees.
WHERE to_date = '9999-01-01'
-- Organizing list by employee number, by making it pick the oldest to_date it will select most recent title.
ORDER BY emp_no ASC, to_date DESC;

-- Creating a chart of total titles.
SELECT DISTINCT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Creating table of mentorship eligibilty amongst tenured employees.
SELECT DISTINCT ON (em.emp_no)
	em.emp_no,
	em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	tt.title
INTO mentorship_eligibilty
FROM employees as em
	JOIN dept_emp as de ON em.emp_no = de.emp_no 
	JOIN titles as tt ON de.emp_no = tt.emp_no
-- Ensuring we get active employees.
WHERE (de.to_date = '9999-01-01')
-- Ensuring we get veteran talents on the verge of retirement.
	AND (em.birth_date BETWEEN '1965-01-01' AND '1966-01-01')
ORDER BY em.emp_no ASC, tt.from_date DESC;