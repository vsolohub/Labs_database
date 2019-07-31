CREATE FUNCTION CountTripAvgDuration (@Month CHAR(2), @Year CHAR(4))
RETURNS @DailyTripStats TABLE(
	TripDate	date,
	TripCount	int,
	AvgDuration	numeric)
AS
BEGIN
INSERT INTO @DailyTripStats
SELECT
	CAST(StartDate AS date),
    COUNT(ID),
    AVG(Duration)
FROM CapitalBikeShare
WHERE
	DATEPART(month, StartDate) = @Month AND
    DATEPART(year, StartDate) = @Year

GROUP BY CAST(StartDate AS date)
RETURN
END