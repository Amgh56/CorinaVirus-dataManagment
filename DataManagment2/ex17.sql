SELECT
    c.countriesAndTerritories AS CountryName,
    ROUND(SUM(d.cases) * 100.0 / c.popData2020, 2) AS PercentCasesOfPopulation,
    ROUND(SUM(d.deaths) * 100.0 / c.popData2020, 2) AS PercentDeathsOfPopulation
FROM
    dataset d
JOIN
    CountryInformation c ON d.geoId = c.geoId
GROUP BY
    c.countriesAndTerritories, c.popData2020
ORDER BY
    c.countriesAndTerritories;
