SELECT        Building.Building_Name, Address.Address_ID AS Expr1, Address.*
FROM            Building INNER JOIN
                         Address ON Building.Address_ID = Address.Address_ID
ORDER BY Address.City