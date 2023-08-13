-- Prepare a report of the library patrons
-- who have checked out the fewest books.
Select count(Loans.LoanID) as LoanCount, Patrons.FirstName, Patrons.Email from Patrons
join Loans on Patrons.PatronID = Loans.PatronID
group by Loans.PatronID
Order by LoanCount ASC
Limit 15;



