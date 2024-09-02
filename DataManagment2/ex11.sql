CREATE TABLE IF NOT EXISTS DateInformation (
    dateRep TEXT PRIMARY KEY,
    day INTEGER NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS CountryInformation (
    geoId TEXT PRIMARY KEY,
    countryTerritoryCode TEXT NOT NULL,
    countriesAndTerritories TEXT NOT NULL,
    popData2020 INTEGER NOT NULL,
    continentExp TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS EventData (
    dateRep TEXT,
    geoId TEXT,
    cases INTEGER NOT NULL,
    deaths INTEGER NOT NULL,
    PRIMARY KEY (dateRep, geoId),
    FOREIGN KEY (dateRep) REFERENCES DateInformation(dateRep),
    FOREIGN KEY (geoId) REFERENCES CountryInformation(geoId)
);
