SELECT
    dateRep AS Date,
    SUM(deaths) OVER (ROWS UNBOUNDED PRECEDING) AS `Cumulative UK Deaths`,
    SUM(cases) OVER (ROWS UNBOUNDED PRECEDING) AS `Cumulative UK Cases`
FROM
    EventData
WHERE
    geoId = 'UK'
ORDER BY
    date(Date) ASC ;
