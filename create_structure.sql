create schema if not exists university_engineering_economics;

CREATE TYPE training AS ENUM ('бюджетник', 'частник');

create table faculty
(
    id    smallint PRIMARY KEY,
    name  varchar(20) not null unique,
    price money check (cast(price as numeric) >= 0)
);

create table course
(
    id         smallint PRIMARY KEY,
    number     smallint not null check ( number > 0 ),
    id_faculty smallint REFERENCES faculty (id)
);

create table students
(
    id            serial PRIMARY KEY,
    name          varchar(20) not null,
    patronymic    varchar(20),
    last_name     varchar(20),
    type_training training not null,
    id_course     smallint REFERENCES course (id)
);