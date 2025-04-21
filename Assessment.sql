create table studennts(
id serial primary key,
name varchar(50) not null,
email varchar(50) unique,
age int,
marks decimal(5,2)
);

insert into studennts values(1,'Rahul','rahul@gmail.com',22,65.05);
insert into studennts values(2,'Priya','priya@gmail.com',22,88);
insert into studennts values(3,'Akash','akash@gmail.com',17,64);
insert into studennts values(4,'Sujith','sujith@gmail.com',24,75);
insert into studennts values(5,'Likith','likith@gmail.com',27,55);

create table course(
c_id int,
id int,
name varchar(50),
foreign key (id) references studennts (id)
);

insert into course values(101,1,'JAVA');
insert into course values(102,2,'Python');
insert into course values(103,1,'SQL');

-- Fetch student details where age > 21.
select * from studennts where age>21;

-- Update the email of the student with id = 5 to 'rahul@gmail.com'.
update studenn set email='rahul@gmail' id=5;

-- Delete all students with age < 18.
delete from studennt where age<18;

select * from studennts;

-- Find the second highest score student details
select s1.* from studennts s1 where 1=
(select count(marks) from studennts s2 where s2.marks>s1.marks);

-- Q6: Write a query to display student names and their enrolled course names.
select s.name,c.name from studennts s inner join course c on s.id=c.id

select * from course;
