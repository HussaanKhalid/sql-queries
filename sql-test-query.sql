CREATE TABLE Book (
	bookID int NOT NULL,
	bookName varchar(255),
	author int,
	CONSTRAINT pk_book PRIMARY KEY(bookID)
)

CREATE TABLE Author (
	authorID int NOT NULL,
	authorName varchar(255),
	authorAddress varchar(255),
	Constraint pk_author PRIMARY KEY(authorID)
)

ALTER TABLE Book ADD CONSTRAINT fk_book FOREIGN KEY (author) references Author(authorID) on delete cascade


insert into Author values (101, 'J.K. Rowling', 'UK')
insert into Author values (102, 'Paulo Coelho', 'Brazil')
insert into Book values (1, 'Chamber of Secrets', 101)
insert into Book values (2, 'Alchemist', 102)
insert into Book values (3, 'Philosopher''s Stone', 101)