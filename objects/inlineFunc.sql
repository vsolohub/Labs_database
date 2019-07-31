CREATE FUNCTION SumStationStats(@StartDate AS datetime)
RETURNS TABLE
AS
RETURN
SELECT StartStation, COUNT(ID) AS RideCount, SUM(DURATION) AS TotalDuration
FROM CapitalBikeShare
WHERE CAST(StartDate as Date) = @StartDate
GROUP BY StartStation