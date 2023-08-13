-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
Select BookID , PatronID from Loans
where DueDate = '2022-07-13';

Select DueDate, Books.Title, Patrons.FirstName, 
Patrons.Email from Loans
Join Patrons on Loans.PatronID = Patrons.PatronID
Join Books on Loans.BookID = Books.BookID
where DueDate = '2022-07-13'
Order by Title;

