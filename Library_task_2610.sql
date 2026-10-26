CREATE TABLE books (
    id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price NUMERIC(8,2),
    pages INT,
    publish_year INT,
    publisher VARCHAR(50)
);

INSERT INTO books VALUES
(1,  'Əli və Nino',       'Qurban Səid',              'Roman',        12.50, 320, 1937, 'Azərnəşr'),
(2,  'Sehrli Şəhər',      'Aysel Rəhimova',           'Fantastika',   15.90, 410, 2019, 'Qanun'),
(3,  '1984',              'George Orwell',            'Antiutopiya',  14.00, 328, 1949, 'Penguin'),
(4,  'Kiçik Şahzadə',     'Antoine de Saint-Exupéry', 'Nağıl',         9.50,  96, 1943, 'Qanun'),
(5,  'Sapiens',           'Yuval Noah Harari',        'Tarix',        22.00, 512, 2011, 'Harper'),
(6,  'Atomic Habits',     'James Clear',              'Özünüinkişaf', 18.50, 320, 2018, 'Avery'),
(7,  'Python-a Giriş',    'Elnur Quliyev',            'Texnologiya',  25.00, 280, 2021, NULL),
(8,  'SQL Əsasları',      'Nərmin Əliyeva',           'Texnologiya',  19.90, 240, 2022, NULL),
(9,  'Cinayət və Cəza',   'Fyodor Dostoyevski',       'Roman',        16.00, 672, 1866, 'Penguin'),
(10, 'Qaranlıq Meşə',     'Rüfət Məmmədov',           NULL,           11.00, 200, 2015, 'Azərnəşr'),
(11, 'Dünya Tarixi',      'Tofiq Hüseynov',           'Tarix',        30.00, 800, 2009, 'Qanun'),
(12, 'Şəhərin Sirri',     'Aysel Babayeva',           'Detektiv',     13.50, 260, 2020, 'Azərnəşr');


--1
SELECT * FROM books

--2
SELECT title, author, price FROM books

--3
SELECT title AS Kitab, price AS Qiymət FROM books

--4
SELECT title, price*0.8 AS discounted_price FROM books

--5
SELECT genre DISTINCT FROM books

--6
SELECT * FROM books 
WHERE price >= 15

--7
SELECT title, author FROM books 
WHERE genre = 'Texnologiya'

--8
SELECT * FROM books 
WHERE price BETWEEN 10 AND 20

--9
SELECT * FROM books 
WHERE genre IN ('Roman', 'Detektiv')

--10
SELECT * FROM books 
WHERE publish_year > 2015

--11
SELECT * FROM books 
WHERE publisher='Azərnəşr' AND pages >= 250

--12
SELECT * FROM books 
WHERE publisher IS NULL

--13
SELECT * FROM books 
WHERE genre IS NULL

--14
SELECT * FROM books 
WHERE genre <> 'Tarix'
-- WHERE NOT genre='Tarix'

--15
SELECT * FROM books
WHERE title LIKE 'S%'

--16
SELECT * FROM books
WHERE author LIKE '%ov'

--17
SELECT * FROM books
WHERE title ILIKE '%tarix%'

--18
SELECT * FROM books
ORDER BY price DESC

--19
SELECT * FROM books
ORDER BY genre ASC, price DESC

--20
SELECT * FROM books
ORDER BY price DESC LIMIT 3

--21
SELECT * FROM books
ORDER BY publish_year DESC LIMIT 2

--22
SELECT * FROM books
ORDER BY price DESC LIMIT 3 OFFSET 2