/* Roll back the migration */ 

/* roll back student column names*/
alter table STUDENTS
rename column STUDENT_ID to ST_ID;

/* roll back student column types*/
alter table STUDENTS
alter column ST_NAME  type  varchar(15),
alter column ST_LAST  type  varchar(15);

/* roll back interest table */
create table INTERESTS as (
select student_id,
unnest(interests) as interest
from INTERESTS_MIGRATED);

/*checking the tables */
select * from students;
select * from interests;