/* Creating Tables and inserting data*/ 

/* creating student table */ 
CREATE TABLE STUDENTS (
ST_ID integer primary key,
ST_NAME varchar(15),
ST_LAST varchar(15)
);

/* creating interests table */ 
create table INTERESTS (
STUDENT_ID integer,
INTEREST varchar(15),
foreign key (STUDENT_ID) 
	references STUDENTS(ST_ID)
);

/* inserting values to tables */ 

insert into STUDENTS (ST_ID, ST_NAME, ST_LAST)
values(1,'Konul', 'Gurbanova'),
	  (2,'Shahnur', 'Isgandarli'),
	  (3,'Natavan', 'Mammadova');

insert into INTERESTS (STUDENT_ID, INTEREST)
values(1,'Tennis'),
	  (1,'Literature'),
	  (1,'Math'),
	  (2,'Tennis'),
	  (3,'Math'),
	  (3,'Music'),
	  (2,'Football'),
	  (1,'Chemistry'),
	  (3,'Chess');
	  
/* checking the tables */
SELECT * from STUDENTS;
SELECT * from INTERESTS;


