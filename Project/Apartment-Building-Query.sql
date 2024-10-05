SELECT        Apartment.*, Building.*, Apartment.Apartment_ID AS Expr1, Building.Building_ID AS Expr2, Building.Building_Name AS Expr3
FROM            Apartment INNER JOIN
                         Building ON Apartment.Building_ID = Building.Building_ID
ORDER BY Expr3