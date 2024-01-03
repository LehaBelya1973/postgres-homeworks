-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
    student_id serial,
    first_name varchar(50),
    last_name varchar(50),
    birthday date(12),
    phone varchar(20)
);

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar(50);


-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name;


-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME birthday TO birth_date;


-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32);


-- 6. Вставить три любых записи с авто генерацией идентификатора
INSERT INTO student (first_name, last_name, birth_date, phone)
VALUES ('Вася', 'Пупкин', '2004-10-22', '+7-900-666-66-66'),
       ('Даня', 'Шторм', '2005-12-12', '+7-812-333-33-33'),
       ('Миша', 'Лихобабин', '2004-03-01', '+7-495-555-55-55');


-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY;