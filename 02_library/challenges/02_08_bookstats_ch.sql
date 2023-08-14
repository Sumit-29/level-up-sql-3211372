-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
select count(DISTINCT(Title)) as Number_Of_Titles, Published from Books
GROUP by Published
order by Number_Of_Titles DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
select count(Loans.BookID) as People_Favorite, Books.Title  from Loans
join Books on Loans.BookID = Books.BookID
Group by Books.Title
Order by People_Favorite DESC
LIMIT 5;