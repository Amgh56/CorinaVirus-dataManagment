SELECT CountryInformation.countriesAndTerritories,dateRep,cases,deaths
FROM EventData
NATURAL JOIN CountryInformation
NATURAL JOIN  DateInformation

ORDER BY countriesAndTerritories asc;