# Pewlett-Hackard-Analysis
## Overview of the analysis:

Pewlett Hackard is a large company boasting several thousand employees, and it's been around for a long time. As baby boomers begin to retire at a rapid rate, Pewlett Hackard is looking toward the future. 
  - The first assignment: to determine which employees are on the verge of retirement and which positions do they currently hold. Also, Pewlett Hackard wants to know the potential openings overall by position.
  - The second aspect of the research: determine how many veteran employees would be eligible for a mentorship program to assist in the growth and development of their     current employee base.

### Openings created by Retiring Employees Analysis

To begin, we needed to join the employees data table with the titles data table to get the right combination of information within one table.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/del_1.png)

This will produce a data table that looks like this:

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/retirement_titles.png)

Opportunity: we have multiple entries for each employee. We need to limit the data to only one per employee, and we want to make it so we're using the entry with the most recent job title. This query is going to utilize the 'DISTINCT ON' function to ensure we only get one employee number. We're also going to add a filter to ensure we're only getting active employees. And we're going to use the 'ORDER BY' command to prioritize the employee line with the most recent 'to_date', that will ensure we're using the most recent job title.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/del_1_removing_dupes.png)

Now we have an effective table for active employees entering retirement and their current job title.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/unique_titles.png)

Lastly, we are going to provide a count of the number of openings these employees will be leaving behind when they retire. We're going to 'GROUP BY' the titles column and use the 'COUNT' function to add up the number of titles.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/del_1_counting.png)

### Mentorship Potential Analysis

For this query we're going to start out using the 'DISTINCT ON' command to limit us to one employee entry in this table. After adding relevant columns from three different tables and joining them together, we're going to add a pair fo filters. First, filter to make sure we're only using active employees. Secondly, a filter to pick out the more tenured employees that would be the strongest candidates for mentoring.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/Deliverable2code.png)

## Results:

The count of openings created by employees on the verge of retirement.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/retiring_titles.png)

And our list of potential mentors.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibilty.png)

To best state the perdicament Hewlett Packard has found themselves in, we'll look at the counts to the number of potential mentors by current position.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/mentorship_counts.png)

1. That leaves Assistant Engineers with a 38:1 opening/mentor ratio, the rest of the results are between 44:1 and 50:1. 
 
2. Engineers and Senior Engineers were amongst the worst off. 

3. Both of the managers are nearing retirement, leaving no managers in the potential mentorship pool. 

4. To their benefit they have a lot of senior staff positions still filled, but they're comparitively light on entry level positions.

## Summary:

The two assignments have been completed, we've calculated the number of retiring employees by title and identify employees who are eligible to participate in a mentorship program. In preparation of this approaching "silver tsunami", Pewlett Hackard should begin their mentorship program sooner rather than later. The overall amount of positions opening with a three year window would be far too great for the available mentor candidates to be able to effectively develop. The three year time window is the blessing in disguise, but the longer Pewlett Hackard waits to implement their mentorship program the more daunting the task will become. 

In addition, there's a bigger problem with the data. The age range of all of the employees fits into a very tight window. Which leads to concerns with the overall diversity of their workforce.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/maxminemployees.png)

Lastly, they will certainly want to spend their time building a comprehensive mentorship and onboarding program. As it has been over 20 years since someone has been promoted within the higher levels of this company.

![This is an image](https://github.com/aaron-ardell/Pewlett-Hackard-Analysis/blob/main/promotions.png)
