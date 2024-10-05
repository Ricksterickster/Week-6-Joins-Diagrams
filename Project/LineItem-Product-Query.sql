SELECT        LineItem.Qty, Product.Name, Product.Price, LineItem.Invoice_ID
FROM            LineItem INNER JOIN
                         Product ON LineItem.Product_ID = Product.Product_ID
WHERE        (LineItem.Invoice_ID = 1)