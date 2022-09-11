-- Create a new database called 'library'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'library
    '
)
CREATE DATABASE library
GO

-- Create a new table called 'Books' in schema 'library'
-- Drop the table if it already exists
IF OBJECT_ID('library.Books', 'U') IS NOT NULL
DROP TABLE library.Books
GO
-- Create the book table in the specified schema
CREATE TABLE library.Books
(
    BookId INT NOT NULL PRIMARY KEY, -- primary key column
    BookName [NVARCHAR](50) NOT NULL,
    BookAuthor [NVARCHAR](50) NOT NULL,
    BookEdition [NVARCHAR](50) NOT NULL
    -- specify more columns here
);
GO

INSERT INTO Books
    ([BookId],[BookName],[BookAuthor],[BookEdition])
VALUES
    (1, 'Alice in Wonderland', 'Lewis Carrol', 1),
    (2, 'Ancient Mariner', 'Coleridge', 1),
    (3, 'Arms and the Man', 'G.B. Shaw', 1),
    (4, 'Around the World in eighty days', 'Jules Verne', 1),
    (5, 'Arthashastra', 'Kautilya', 1);
GO



-- Create a new table called 'Customer' in schema 'library'
-- Drop the table if it already exists
IF OBJECT_ID('library.Customer', 'U') IS NOT NULL
DROP TABLE library.Customer
GO
-- Create the table in the specified schema
CREATE TABLE library.Customer
(
    CustomerId INT NOT NULL PRIMARY KEY, -- primary key column
    CustomerName [NVARCHAR](50) NOT NULL,
    CustomerAddress [NVARCHAR](100) NOT NULL,
    CustomerEmail [NVARCHAR](100) NOT NULL,
    -- specify more columns here
);
GO

INSERT INTO Customer
    ([CustomerID],[CustomerName],[CustomerAddress],[CustomerEmail])
VALUES
    (100, 'Samantha Smith', '205 Lollipo Road', "123@ghs.com"),
    (103, 'Grace Kendle', '745 Mandland Road', "453@ghs.com"),
    (104, 'George Yale', '690 kfhnf Road', "908@ghs.com"),
    (105, 'Saylor Smith', '872 yuakdm Road', "234@ghs.com"),
    (102, 'Rylee Smith', '099 gumlo Road', "456@ghs.com");
GO

-- Create a new table called 'Staff' in schema 'library'
-- Drop the table if it already exists
IF OBJECT_ID('library.Staff', 'U') IS NOT NULL
DROP TABLE library.Staff
GO
-- Create the table in the specified schema
CREATE TABLE library.Staff
(
    StaffId INT NOT NULL PRIMARY KEY, -- primary key column
    staffName [NVARCHAR](50) NOT NULL,
    staffAddress [NVARCHAR](100) NOT NULL,
    staffPhone [NVARCHAR](100) NOT NULL,
    -- specify more columns here
);
GO

iNSERT INTO Staff
    ([StaffId],[staffName],[staffAddress],[staffPhone])
VALUES
    (120, 'Asher Brown','799 Hallow Road', 230-769-7888),
    (121, 'Erick Green','900 love Road', 230-755-7898),
    (122, 'Mandy Grill','578 jin Road', 230-449-7888),
    (123, 'Iris James','554 Hallow Road', 220-989-9089),
    (124, 'Tim Lorde','255 Pollo Road', 230-987-0988);
GO

-- Create a new table called 'Return' in schema 'library'
-- Drop the table if it already exists
IF OBJECT_ID('library.Borrow', 'U') IS NOT NULL
DROP TABLE library.Borrow
GO
-- Create the table in the specified schema
CREATE TABLE library.Borrow
(
    BorrowId INT NOT NULL PRIMARY KEY, -- primary key column
    borrowDate [NVARCHAR](50) NOT NULL,
    returnDate [datetime](50) NOT NULL
    -- specify more columns here
);
GO

