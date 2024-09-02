SELECT
    c.countriesAndTerritories AS CountryName,
    ROUND(SUM(d.deaths) * 100.0 / SUM(d.cases), 2) AS `Percent Deaths of Country Cases`
FROM
    dataset d
JOIN
    CountryInformation c ON d.geoId = c.geoId
GROUP BY
    c.countriesAndTerritories
HAVING
    SUM(d.cases) > 0
ORDER BY
    `Percent Deaths of Country Cases` DESC
LIMIT 10;
