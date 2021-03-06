
/*Create Database*/

CREATE DATABASE test_db;

/*Create Table*/
CREATE TABLE people(
    person_id int not null auto_increment,
    last_name varchar(255) null,
    first_name varchar(255) null,
    address varchar(255) null,
    city varchar(255) null,
    PRIMARY KEY (person_id)
)

/*Create View*/

CREATE VIEW blog_people AS
SELECT * FROM people

CREATE VIEW v_brasil_customers address
    SELECT customer_name,
    contact_name
    FROM v_brasil_customers
    WHERE country = "Brasil";

/*Alter Table*/

ALTER TABLE people
ADD date_of_birth date;

ALTER TABLE people
Alter COLUMN date_of_birth year;

ALTER TABLE people
DROP COLUMN date_of_birth;

/*Eliminar la base de datos*/

DROP TABLE people

/*Insert Data*/

INSERT INTO `people` (`person_id`, `last_name`, `first_name`, `address`, `city`) 
VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1', 'México'),
	   ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'),
	   ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');

/*update*/

UPDATE people
SET last_name = 'Chávez', city='Mérida'
WHERE person_id = 1

UPDATE people
SET last_name = 'Juan'
WHERE city = 'Mérida'

UPDATE people
SET first_name = 'Juan'

/*Delete*/

DELETE FROM people
WHERE person_id = 1

DELETE FROM people;

/*SELECT*/

SELECT first_name, last_name
FROM people

select city, count(*) as total
from people
where actve = true
group by city
having total >=2