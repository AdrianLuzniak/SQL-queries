--Creating books table 
CREATE TABLE books
(
	book_id int,
	title varchar(100),
	author varchar(50),
	pages int,
	year_printed int,
	percent_finished decimal(5,2),
	adults_only bool
)

--Inserting values into books table
INSERT INTO books
VALUES
(1, 'Frankenstein', 'Mary Shelley', 289, 2007, 100, false),
(2,  'Tales of Terror and Madness', 'Edgar Allan Poe', 188, 2001, 45.33, true)

--Selecting values from books table
SELECT * FROM books;

--Droppinng books table
DROP TABLE books;