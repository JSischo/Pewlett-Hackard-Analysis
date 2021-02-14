# Pewlett-Hackard-Analysis

## Purpose of the Analysis
> The purpose of this project was to utilize previously conducted queries and newly constructed databases regarding potentially retiring employees to help the executives at PH determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Conducting these anaylses will help the company plan for a large number of retirees to enable them to plan hiring and training plans.

## Results:

Following are the most pertinent findings from the queries that were conducted:
- From the unique_titles.csv database we find that there are a large number of employees that will be retiring in the near future from HP.
- From the retiring_titles.csv file we see some results that are a little concerning. We are able to ascertain that a large number of retirees will be from senior level positions, almost 64%. The largest number at the Senior Engineer level followed very closely by Senior Staff. See below for the actual numbers.
 
  ![Total Retirees by Title](/Queries/retiring_titles.PNG)

- On the plus side, we can also see from the above query that the company may only be loosing two managers to retirement. 
- The mentorship eligibility query was able to produce a list of 1549 current employees that may be eligible to be mentors before they retire.

## Summary:

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    > The unique_titles query revealed that there will be **90,398** employees retiring in the near future that the company may need to fill. 

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    > Although the mentorship eligibility query shows that there is a large number of employees elgible to be mentors (1549), that is only a small percentage of the retiring workforce: **1.7%**. That means that on a pure numbers perspective, each mentor would have to mentor about 59 employees if they want to fill all positions that will be vacated.

3. One query that may help PH increase the number of mentors is to expand the elgibility to current empoloyees that were born between 1/1/1964 and 12/31/1966. By expanding the eligibility to a three year time period, the number of possible mentors would increase to **19905**, an over 12 fold increase. *The results of this query can be seen in the mentorship_eligibility_exp file in the data folder.* 

4. Another query that could be helpful to PH in focusing on just the senior level employees that would be retiring to focus the mentoring efforts on those roles. We could conduct a query with the code below. This would reduce the number of total retirees to 57668 senior level positions. This may be a more manageable number for the mentors. If we use this number and combined it with the previous suggestion, each mentor would only have about 3 mentees. *See the retiring_senior.csv file in the data folder to see the results of this query.* 
   ```SELECT ut.emp_no,
    ut.first_name,
    ut.last_name,
    ut.title
   INTO retiring_senior
   FROM unique_titles as ut
   WHERE title LIKE 'Senior%';```
