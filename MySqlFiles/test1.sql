    /*
create table if not exists teacher (
	teacher_id serial primary key,
	name_teacher varchar(100) not null,
	lastname_teacher varchar(100) not null,
	email varchar(100) not null unique
);
*/


/*
create table if not exists courses(
	course_id serial primary key,
	name_course varchar(20) not null,

	teacher_id_fk integer,
	-- The next line create a foreign key
	foreign key(teacher_id_fk) references teacher(teacher_id) on delete set null
);
*/

--insert into teacher(name_teacher,lastname_teacher,email) values('Jose','Vergara','gvergara@gmail.com')

--select * from teacher;
--select * from courses;

--insert into courses(name_course,teacher_id_fk) values('Programming',1)
--select * from courses;


/*
insert into teacher(name_teacher,lastname_teacher,email) values('Marcos','Sanchez','msanchez@gmail.com');
insert into teacher(name_teacher,lastname_teacher,email) values('Mariana','Segovia','msegovia@gmail.com');
insert into teacher(name_teacher,lastname_teacher,email) values('Jorge','Huamani','jhuamani@gmail.com');
*/

--select * from teacher;

--insert into courses(name_course,teacher_id_fk) values ('Algorithms',2),('Physics',1);

-- delete from teacher where teacher_id = 1;

//select * from courses;