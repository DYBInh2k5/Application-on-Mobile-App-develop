create database mydb;
use mydb;
CREATE TABLE course (
  id INT  PRIMARY KEY auto_increment,
  name VARCHAR(255) NOT NULL,
  img VARCHAR(500),
  teacher VARCHAR(100),
  price DECIMAL(10,2),
  rating DECIMAL(2,1)
);

INSERT INTO course (id, name, img, teacher, price, rating)
VALUES
(1, 'The Complete Python Programming Course', 'https://img-c.udemycdn.com/course/480x270/394676_ce3d_5.jpg', 'Avan', 89, 4.4),
(2, 'The Web Developer Bootcamp 2024', 'https://img-c.udemycdn.com/course/750x422/625204_436a_3.jpg', 'Avan', 59, 4.4);