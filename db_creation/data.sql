CREATE DATABASE hng_tech;

use hng_tech;

CREATE TABLE interns(
    id int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(20) NULL,
    experience LONGTEXT NULL,
    picture VARCHAR(30) NULL,
    email VARCHAR(100) NOT NULL,
    tech_interest VARCHAR(30) NOT NULL,
    internship_reason LONGTEXT NULL
);


CREATE TABLE products(
    id int(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(30) NOT NULL,
    intern VARCHAR(30) NOT NULL
);

INSERT INTO interns(full_name,phone_number,experience,email,tech_interest,internship_reason)VALUES("Chukwunonso Ikeji","08131832011","it was worth it","williamikeji@gmail.com","PHP","To learn more");
INSERT INTO interns(full_name,phone_number,experience,email,tech_interest,internship_reason)VALUES("Chukwunonso Ikeji","08131832011","it was worth it","williamikeji@gmail.com","PHP","To learn more");
INSERT INTO interns(full_name,phone_number,experience,email,tech_interest,internship_reason)VALUES("Chukwunonso Ikeji","08131832011","it was worth it","williamikeji@gmail.com","PHP","To learn more");
INSERT INTO interns(full_name,phone_number,experience,email,tech_interest,internship_reason)VALUES("Chukwunonso Ikeji","08131832011","it was worth it","williamikeji@gmail.com","PHP","To learn more");


INSERT INTO products(product_name,intern)VALUES("HNGtech","chukwunonso Ikeji");
INSERT INTO products(product_name,intern)VALUES("HNGtech","chukwunonso Ikeji");
INSERT INTO products(product_name,intern)VALUES("HNGtech","chukwunonso Ikeji");
INSERT INTO products(product_name,intern)VALUES("HNGtech","chukwunonso Ikeji");