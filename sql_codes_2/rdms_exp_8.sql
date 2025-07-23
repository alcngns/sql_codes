--Write the query that returns the product categories, main category and best-selling subcategory


SELECT 
I.CATEGORY1, I.CATEGORY2, SUM(OD.LINETOTAL) AS TOTALPRICE
FROM ORDERDETAILS AS OD
JOIN ITEMS I ON I.ID = OD.ITEMID
GROUP BY I.CATEGORY1, I.CATEGORY2
ORDER BY 1, 3 DESC