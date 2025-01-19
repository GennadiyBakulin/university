SET search_path TO university_engineering_economics;

select students.*
from students
         join course on students.id_course = course.id and students.type_training = 'частник'
         join faculty on course.id_faculty = faculty.id
where cast(faculty.price as numeric) > 30000;

update students
set id_course = 2
where last_name = 'Петров';

select students.*
from students;

select students.*
from students
where patronymic is null
   or last_name is null;

select students.*
from students
where name like '%ван%'
   or patronymic like '%ван%'
   or last_name like '%ван%';

delete from students;
delete from course;
delete from faculty;