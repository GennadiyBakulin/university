SET search_path TO university_engineering_economics;

insert into faculty (id, name, price)
VALUES (1, 'Инженерный', 30000.00),
       (2, 'Экономический', 49000.00);

insert into course (id, number, id_faculty)
VALUES (1, 1, 1),
       (2, 1, 2),
       (3, 4, 2);

insert into students (name, patronymic, last_name, type_training, id_course)
VALUES ('Петр', 'Петрович', 'Петров', 'бюджетник', 1),
       ('Иван', 'Иваныч', 'Иванов', 'частник', 1),
       ('Сергей', 'Иваныч', 'Михно', 'бюджетник', 3),
       ('Ирина', 'Юрьевна', 'Стоцкая', 'частник', 3),
       ('Настасья', null, 'Младич', 'частник', 2);