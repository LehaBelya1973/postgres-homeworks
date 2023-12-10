"""Скрипт для заполнения данными таблиц в БД Postgres."""
import csv

import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="north",
    user="postgres",
    password="postgres",
    port="5433",
)
with open("north_data/employees_data.csv", "r", newline="") as file:
    employees = csv.reader(file)
    next(employees)
    with conn.cursor() as cur:
        for employer in employees:
            for employee in employees:
                cur.execute(
                    "INSERT INTO employees (employee_id, first_name, last_name, title, birth_date, notes) VALUES (%s, %s, %s, %s, %s, %s)",
                    employee,
                )
                cur.execute("SELECT * FROM employees")
                rows = cur.fetchall()
print(rows)

conn.close()
