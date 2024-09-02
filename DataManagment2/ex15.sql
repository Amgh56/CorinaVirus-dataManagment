SELECT dateRep,cases
FROM EventData
NATURAL JOIN DateInformation
WHERE geoId = 'UK'
ORDER BY year,month,day asc ;