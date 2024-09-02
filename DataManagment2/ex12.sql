INSERT INTO DateInformation (dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year
FROM dataset;

INSERT INTO CountryInformation (geoId, countryterritoryCode, continentExp, countriesAndTerritories, popData2020)
SELECT DISTINCT geoId, countryterritoryCode, continentExp, countriesAndTerritories, popData2020
FROM dataset;

INSERT INTO EventData (dateRep, geoId, cases, deaths)
SELECT DISTINCT dateRep, geoId, cases, deaths
FROM dataset;