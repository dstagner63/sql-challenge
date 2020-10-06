# sql-challenge
SQL homework repository

In this assignment I began by creating an Entity Relationship Diagram (ERD) showing the six tables for the homework. This included choosing the primary and foreign keys for each table as well as the type of relationship they have with one another. 

Next, I created a SQL database called “EmployeeSQL” using pgAdmin and imported the data from six csv files for the tables. I ran into a problem with duplicates in the employee file which were deleted before the import of that table’s data. I ran a SELECT * FROM command for each of the tables to initially inspect them. 

Finally, I wrote the queries to perform the 8 parts of this analysis. As I reviewed the data a couple of things seemed suspicious to me. First there were 300,024 employees for the 20-year period included in the data. The second thing that really got my attention was that these 300,024 employees only had a total of 24 managers. That is 12,501 employees per manager. No way! The names of the employees also seemed to be contrived.

I wanted to attempt the bonus but had difficulty trying to get the right path to my pgAdmin database. I also was not sure about the dependencies necessary to get the data into pandas and use Matplotlib to chart the additional data. 

However, I was able to complete this homework without any help from my tutor, a first for me and am feeling rather good about it.   


