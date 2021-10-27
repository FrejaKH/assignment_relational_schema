CREATE TABLE city (
    city_id INT PRIMARY KEY, 
    city_name VARCHAR(85),
    countycode VARCHAR(3),
    district VARCHAR(20),
    city_population INT,
    code VARCHAR(3)
);

INSERT INTO city VALUES (1, 'Copenhagen', 'DNK', 'Region Hovedstaden', 1336982, 'DNK');
INSERT INTO city VALUES (2, 'Aarhus', 'DNK', 'Region Midtjylland', 282910, 'DNK');
INSERT INTO city VALUES (3, 'Odense', 'DNK', 'Region Syddanmark', 180760, 'DNK');
INSERT INTO city VALUES (4, 'Aalborg', 'DNK', 'Region Nordjylland', 119219, 'DNK');

CREATE TABLE country (
    code VARCHAR(3) PRIMARY KEY,
    country_name VARCHAR(56),
    continent VARCHAR(20),
    region VARCHAR(20),
    gnp DECIMAL(8,1),
    surfacearea INT,
    localname VARCHAR(10),
    country_population INT,
    lifeexpectancy DECIMAL(4,1),
    code2 VARCHAR(3),
    captial VARCHAR(56),
    headofstate VARCHAR(20),
    govermentform VARCHAR(10)
);

INSERT INTO country VALUES ('DNK', 'Denmark', 'Europe', 'Nordic Country', 362.6, 42933, 'Danmark', 5818850, 81.2, 'DK', 'Copenhagen', 'Mette Frederiksen', 'Monarchy');

CREATE TABLE speaks (
    code VARCHAR(3),
    countrycode VARCHAR(3),
    country_language VARCHAR(20),
    PRIMARY KEY(code, countrycode, country_language)
);

INSERT INTO speaks VALUES ('DNK', 'DNK', 'Danish');
INSERT INTO speaks VALUES ('DNK', 'DNK', 'English');

CREATE TABLE countrylanguage (
    countrycode VARCHAR(3),
    country_language VARCHAR(20),
    isofficial VARCHAR(3),
    language_percentage INT,
    PRIMARY KEY(countrycode, country_language)
);

INSERT INTO countrylanguage VALUES ('DNK', 'Danish', 'Yes', 93);
INSERT INTO countrylanguage VALUES ('DNK', 'English', 'No', 2);

ALTER TABLE city
ADD FOREIGN KEY (code)
REFERENCES country(code)
ON DELETE SET NULL;