SET search_path TO university_engineering_economics;
insert into faculty (name, price)
VALUES ('Инженерный', 30000.00),
       ('Экономический', 49000.00);

insert into course (number, id_faculty)
VALUES (1, 1),
       (1, 2),
       (4, 2);

insert into students (name, patronymic, last_name, type_training, id_course)
VALUES ('Петр', 'Петрович', 'Петров', 'бюджетник', 1),
       ('Иван', 'Иваныч', 'Иванов', 'частник', 1),
       ('Сергей', 'Иваныч', 'Михно', 'бюджетник', 3),
       ('Ирина', 'Юрьевна', 'Стоцкая', 'частник', 3),
       ('Настасья', null, 'Младич', 'частник', 2);