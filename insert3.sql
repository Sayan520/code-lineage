INSERT INTO CustomerRegionOrders (CustomerID, RegionName, TotalOrderAmount)
SELECT 
    cr.CustomerID,
    cr.RegionName,
    SUM(o.OrderAmount) AS TotalOrderAmount
FROM CustomerRegions AS cr
JOIN Orders AS o
    ON cr.CustomerID = o.CustomerID
GROUP BY 
    cr.CustomerID,
    cr.RegionName;