-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count desc

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date
FROM employees as e

SELECT de.from_date,
	de.to_date
FROM dept_emp as de

SELECT t.title
FROM titles as t

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility_exp
FROM employees as e
	LEFT JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1964-01-01' AND '1966-12-31')
AND de.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;
SELECT * FROM mentorship_eligibility_exp

SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility_exp
FROM employees as e
	LEFT JOIN dept_emp as de
		ON e.emp_no = de.emp_no
	INNER JOIN titles as t
		ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1964-01-01' AND '1966-12-31')
AND de.to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;
SELECT * FROM mentorship_eligibility_exp

SELECT ut.emp_no,
	ut.first_name,
	ut.last_name,
	ut.title
INTO retiring_senior
FROM unique_titles as ut
WHERE title LIKE 'Senior%';