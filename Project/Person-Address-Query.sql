SELECT        Person.*, Address.*, Address.Address_ID AS Expr1, Person.Person_ID AS Expr2, Person.Last_Name AS Expr3
FROM            Person INNER JOIN
                         Address ON Person.Address_ID = Address.Address_ID
ORDER BY Expr3