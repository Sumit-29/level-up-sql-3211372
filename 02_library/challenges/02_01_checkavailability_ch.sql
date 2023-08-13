-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select  COUNT(Title) from Books
where Title = 'Dracula';

select COUNT(Books.Title) from Books
join Loans on Books.BookID = Loans.BookID
where Books.Title = 'Dracula' and  Loans.ReturnedDate is NULL;


SELECT 
(
select  COUNT(Title) from Books
where Title = 'Dracula'
) - (
select COUNT(Books.Title) from Books
join Loans on Books.BookID = Loans.BookID
where Books.Title = 'Dracula' and  Loans.ReturnedDate is NULL
)
as AvailableCopies;