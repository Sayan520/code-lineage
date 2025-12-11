INSERT INTO Regions (RegionID, RegionName)
SELECT 
    RegionID,
    RegionName
FROM #TempRegions;
