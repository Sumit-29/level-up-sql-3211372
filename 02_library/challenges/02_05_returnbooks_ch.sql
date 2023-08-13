-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424
SELECT BookID from Books
where barcode = '6435968624'or barcode ='5677520613'
or barcode ='8730298424';

UPDATE Loans
set ReturnedDate = '2022-07-05'
where BookID = (SELECT BookID from Books
where barcode = '6435968624'
and ReturnedDate is NULL;


UPDATE Loans
set ReturnedDate = '2022-07-05'
where BookID = (SELECT BookID from Books
where barcode ='5677520613'
and ReturnedDate is NULL;


UPDATE Loans
set ReturnedDate = '2022-07-05'
where BookID = (SELECT BookID from Books
where barcode ='8730298424')
and ReturnedDate is NULL;

