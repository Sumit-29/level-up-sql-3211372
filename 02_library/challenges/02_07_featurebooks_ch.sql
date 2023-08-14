-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT BookID from Books
where Published >= '1890' And Published <= '1899';

select Books.Title, Books.Barcode from Books
join Loans on Loans.BookID = Books.BookID
where Books.Published >= '1890' And Books.Published <= '1899' 
and Loans.ReturnedDate is NULL
Order by Books.Title;

SELECT Title, Barcode from Books
where Published BETWEEN 1890 and 1899
and (BookID Not in (SELECT BookID from Loans 
where ReturnedDate is Null))
Order by Title;