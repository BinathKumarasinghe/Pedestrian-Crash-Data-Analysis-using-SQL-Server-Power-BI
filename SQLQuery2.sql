Select*
From [Pedestrian_Crashes]

SELECT *
FROM Pedestrian_Crashes
WHERE 
    [Crash_ID] IS NULL OR
    [Crash_Date] IS NULL OR
    [Crash_Time] IS NULL OR
    [Severity] IS NULL OR
    [Crash_Type] IS NULL OR
    [Pedestrians] IS NULL OR
    [Pedestrian_Casualties] IS NULL OR
    [Reported_Location] IS NULL OR
    [Location] IS NULL 
	
SELECT 
    Crash_ID, Crash_Date, Crash_Time, Severity, Crash_Type, 
    Pedestrians, Pedestrian_Casualties, Reported_Location, Location,
    COUNT(*) AS duplicate_count
FROM 
    Pedestrian_Crashes
GROUP BY 
    Crash_ID, Crash_Date, Crash_Time, Severity, Crash_Type, 
    Pedestrians, Pedestrian_Casualties, Reported_Location, Location
HAVING 
    COUNT(*) > 1;


	DELETE FROM Pedestrian_Crashes
WHERE (
    [Crash_ID] IS NULL OR
    [Crash_Date] IS NULL OR
    [Crash_Time] IS NULL
) OR (
    [Severity] IS NULL OR
    [Crash_Type] IS NULL OR
    [Pedestrians] IS NULL
) OR (
    [Pedestrian_Casualties] IS NULL OR
    [Reported_Location] IS NULL
) OR (
    [Location] IS NULL 
   );




	



