
-- Task1
CREATE DATABASE computerstore;

USE computerstore;


-- Task2
CREATE TABLE manufacturers(
	code int primary key,
    name char(50) not null
);

CREATE TABLE products(
	code int primary key,
    name varchar(50) not null,
    price float not null,
    manufacturer int not null,
    FOREIGN KEY (manufacturer) REFERENCES manufacturers(code)
);

-- Task3
INSERT INTO manufacturers(code, name) VALUES 
(1, 'Sony'),
(2, 'Asus'),
(3, 'Hewlett-Packard'),
(4, 'Lenovo'),
(5, 'Fujitsu'),
(6, 'SanDisk');

INSERT INTO products(code, name, price, manufacturer) VALUES
(1, 'Hard drive', 64.89, 5),
(2, 'Memory Card', 17.99, 6),
(3, 'Laptop charger', 42.29, 4),
(4, 'USB Flash Drive', 10, 6),
(5, 'Monitor', 219.99, 1),
(6, 'HDMI cable', 18.29, 2),
(7, 'Gaming laptop', 2079.59, 2),
(8, 'Printer', 96.32, 3),
(9, 'Toner cartridge', 59, 3),
(10, 'Computer case', 158.92, 2);

-- Task4
SELECT * FROM manufacturers;

-- Task5
SELECT * FROM products;

-- Task6
SELECT name FROM products;

-- Task7
SELECT name, price FROM products;

-- Task8
SELECT name FROM products WHERE price <= 200;

-- Task9
/* with BETWEEN */
SELECT * from products where price BETWEEN 60 AND 120;

/* with AND */
SELECT * FROM products WHERE price >= 60 AND price <= 120;

-- Task10
/* without AS */ 
SELECT name, price*100 FROM products;

/* with AS */
SELECT name, price*100 AS PriceCents FROM products;

-- Task11
SELECT AVG(price) FROM products;

-- Task11.2
/* cu SELECT in SELECT */
SELECT AVG(price) FROM products WHERE manufacturer=(SELECT code FROM manufacturers WHERE name='Asus');

/* cu INNER JOIN */
SELECT AVG(price) 
FROM products
INNER JOIN manufacturers
ON products.manufacturer = manufacturers.code
WHERE manufacturers.name = 'Asus';

-- Task12
SELECT AVG(price) FROM products WHERE manufacturer=2;

-- Task13
SELECT COUNT(*) FROM products WHERE price >= 180;

-- Task14
SELECT name, price
FROM products
WHERE price >= 180
ORDER BY price DESC, name ASC;

-- Task15
/* with LEFT JOIN */
SELECT * FROM products
LEFT JOIN manufacturers
ON products.manufacturer = manufacturers.code;

-- Task16
SELECT * FROM products;
SELECT * FROM manufacturers;

SELECT products.name, price, manufacturers.name
FROM products
INNER JOIN manufacturers
ON products.manufacturer = manufacturers.code;

-- Task17
SELECT AVG(price), manufacturer
FROM products
GROUP BY manufacturer;

-- Task18
/* with INNER JOIN */ 
SELECT AVG(price), manufacturers.name
FROM products
INNER JOIN manufacturers
ON products.manufacturer = manufacturers.code
GROUP BY manufacturers.name;

/* without INNER JOIN */
SELECT AVG(price), manufacturers.name
FROM products, manufacturers
WHERE products.manufacturer = manufacturers.code
GROUP BY manufacturers.name;

-- Task19
SELECT name, price
FROM products
ORDER BY price ASC
LIMIT 1;

/* vrem sa vedem daca avem produse cu aceeasi valoare si folosim limit 1 pe care il returneaza dintre cele 2 */
select * FROM products;

UPDATE products
SET price=10
WHERE name='HDMI cable';

/* sa afisam toate produsele cu pretul cel mai ieftin, nestiind care e acela */
SELECT * FROM products
WHERE price=(SELECT MIN(price) FROM products);


-- Task21
UPDATE products
SET name = 'Laser Printer'
WHERE code=8;

-- Task22
UPDATE products
SET price = price - (price * 0.1);

-- Task23
UPDATE products
SET price = price - (price * 0.15)
WHERE price >=120;

-- Task24
SELECT MIN(price)
FROM products 
WHERE manufacturer=2;

-- Task25
select * from products;

SELECT * FROM products
WHERE manufacturer IN (SELECT code FROM manufacturers WHERE name IN ('Sony', 'Lenovo', 'Asus'));