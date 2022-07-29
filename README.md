# PEWLETT- HACKARD ANALYSIS 

Pewlett-Hackard is a company with boasting several thousand employees and with a large history in the industry. As many other great and old companies , PH is facing one of the most recent issues in the job market, the retirment of the Baby Boomers. According to the estatistics, this population could be very large in many companies and with their retirement also means a very large gap to be filled. Their retirement will increase the number of vacancies but at the same time will create a shortage of skilled professionals. 

Nevertheless Pewlett-Hackard is very consious of this situation and has developed a plan of two vias: the first action is to offer a retirement package and the second action is to be clear with the number of job openings once those candidates to package retirement leave their positions in order to generate a plan to fill these positions.  The company needs to be prepared for this plan as soon as posible becuase they know this situacion could be a problem of productivity in the near future.

For that reason the company has tasked Bobby consiente (an HR analyst) to perform an employee research. There are two important questions to be answered in this challenge: 

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

Fortunatelly, the company has decided to update the way to get and analyze data: from Excel and VBA to SQL. That is an important upgrade considering the large amount of data to be analyzed by Bobby to answer the questions above.


## RESULTS


***Baby Boomers research***:

The first step in our analysis is to identify the Baby boomers (or candidates to retirement). This research was based on the existing data of Employees and Titles tables, we were able to filter by the bith_date (to identify the employees that were born between 1952 and 1955) and the from_date to_date in the Title table in order to retrive the current position where those employees are working. Additionally we used the function DISTINCT ON to retrive one sigle record of the employees filtered with the previuos characteristics.

The result was a table that combines the name of all the employees and their current title in the company:

![Employees to retire](https://user-images.githubusercontent.com/106939511/181675936-1a1cf158-27bc-4d8e-ab16-a7455d4d8f56.png)

Once we got this data then the next step was to count the number of employees (by employee number) per title in order to get the amount of employees by their most recent job title who are about to retire:

- 25,916 employees are Senior Engineer 

- 24,926 employees are Senior Staff

- 9,285 employees are Engineer

- 7636 employees are Staff

- 3603 employees are Technique Leader

- 1090 employees are Assisstant Engineer

- 2 employees are Manager

    The total amount of roles that will need to be filled as the "silver tsunami" begins to make an impact is : 72,458.
 
 
 
 ***Mentorship employees elegibility***
 
 In order to get the number of employees that could help PH to develop the next generation of employees, we had to filter from the table of candidates to retire, all the employees who were born in 1965. The results are showed in the following table:
 
 ![Mentorship_program](https://user-images.githubusercontent.com/106939511/181679096-a0ecb514-bd76-499b-9849-8f5f3902c3bf.png)
 
This research gives us a total of 1,549 employees that could participate in this mentorship program. Nevertheless this amount of employees will not be enough to train the next generation of employees. Look at the following image where we are comparing the number of mentors and the total amount of current employees, it is clear to see that even with the amount of employees that could be retired, the number of mentors per job title represents less than 1% of the population. 

![Employees comparison](https://user-images.githubusercontent.com/106939511/181682089-851d67fd-9546-47f4-b63a-9ca5e8dc30ba.png)




## SUMMARY

With the more than 70,000 Baby Boomers retiring sooner rather than later in PH, it is clear to see that this company will need to develop as soon as possible a strong workforce plan for replacing this positions with training and development programs. Based on the results of this study, the major amount of retiring Baby Boomers are in positions where major and specific skillsets are required (senior positions = 50842 employees = 70% of the future retired employees). This situation will cause a significant knowledge gap. Many employees will need to be trained to replace the experienced workers, nevertheless as this study shows, there isn't enogh human capital to close this gap with the current potential mentors. That means that PH should develop an third action plan to be able to keep their products moving, like the creation of an expantion plan to offer attractive wages or compensation to attract outsourced talent with high level of skill required to fill the positions that cannot be occupied by internal sources.  


    
  

