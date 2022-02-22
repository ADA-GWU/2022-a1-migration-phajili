/* Migration */ 

/* rename st_id column*/
alter table STUDENTS
rename column ST_ID to STUDENT_ID;

/* change the length of columns*/
alter table STUDENTS
alter column ST_NAME  type  varchar(30),
alter column ST_LAST  type  varchar(30);

/* migrate data changing name and type of interest column*/
create table INTERESTS_MIGRATED as
(select STUDENT_ID, 
 array_agg(INTEREST) as INTERESTS
 from INTERESTS
 group by STUDENT_ID 
 order by STUDENT_ID asc);
 
alter table INTERESTS_MIGRATED 
add CONSTRAINT INTERESTS_FOREIGNKEY 
foreign key (STUDENT_ID) references STUDENTS(STUDENT_ID);

alter table INTERESTS
rename to INTERESTS_OLD;

/* checking the tables */
select * from STUDENTS;
select * from INTERESTS_MIGRATED;