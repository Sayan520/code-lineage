INSERT INTO CustomerRegions (CustomerID, RegionName)
SELECT 
    c.CustomerID,
    r.RegionName
FROM Customers AS c
JOIN Regions AS r
    ON c.RegionID = r.RegionID;
