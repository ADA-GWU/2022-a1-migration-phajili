# 2022-a1-migration-phajili
2022-a1-migration-phajili created by GitHub Classroom
# Instructions- Table creation, Data migration and Rollback

1. Download and start PostgreSQL & open query tool

2. In the opened window, click open in the left corner to browse throug files and open "create table.sql" to open it.

3. Select and run the code to create "students" and "interests" tables for further migration. 
	3.1 First two sections of the code will create tables specifying the column names & types
	3.2 Next two sections of the code will insert values into the created tables-populate them. 
	3.3 Highlight all codes and press run to execute. Bottom part of the screen will show a message about successfull execution of the query.
	3.4 Check the ready tables with the codes in "checking the tables" section

4. Click open in the left corner to browse throug files and open "migrate.sql" to open it. In this script, tables will be migrated as per requirements.
	
5. Select and run code to migrate the tables according to requirements. 
	5.1 First section of the code will rename column st_id to student_id in students table.
	5.2 Second section of the code will change length of the st_name and st_last columns from 15 to 30 in students table. 
	5.3 Third section of the code will create a new table as a copy of interests table named "interests_migrated" where column name is changed from "interest" to "interests" and values are combined as array & grouped by student_id
	5.4 In the next section, foreign key is added and old interests table is renamed from "interests" to "interests_old"
	5.5 Highlight all codes and press run to execute. Bottom part of the screen will show a message about successfull execution of the query.
	5.6 Check the ready tables with the codes in "checking the tables" section

6. Click open in the left corner to browse throug files and open "rollback.sql" to open it.
	
7. Select and run code to rollback all the changes made to the tables in step 5 (migration).
	7.1 First section will rename column "student_id" back to "st_id" in students table
	7.2 Second section will change length of columns "st_name" & "st_last" back to 15 in students table
	7.3 Third section will create a new table where previoysle combined/aggregated columns is splited with unnest function and named as "interest" as in original table.
	7.4 Highlight all codes and press run to execute. Bottom part of the screen will show a message about successfull execution of the query.
	7.5 Check the ready tables with the codes in "checking the tables" section
