CREATE DATABASE Environmental_DB;
USE Environmental_DB;
SELECT * FROM cleaned_master_environmental_impact_dataset;
SELECT ï»¿Country, City FROM cleaned_master_environmental_impact_dataset;
SELECT COUNT(*) AS Total_Records FROM cleaned_master_environmental_impact_dataset;
SELECT AVG(`AQI Value`) AS Average_AQI FROM cleaned_master_environmental_impact_dataset;
SELECT ï»¿Country, City, `AQI Value` FROM cleaned_master_environmental_impact_dataset ORDER BY `AQI Value` DESC LIMIT 10;
SELECT `AQI Category`, COUNT(*) AS Total FROM cleaned_master_environmental_impact_dataset GROUP BY `AQI Category`;
SELECT Country, AVG(`AQI Value`) AS Average_AQI FROM cleaned_master_environmental_impact_dataset GROUP BY Country ORDER BY Average_AQI DESC;
SELECT MAX(`AQI Value`) AS Highest_AQI FROM cleaned_master_environmental_impact_dataset;
SELECT MIN(`AQI Value`) AS Lowest_AQI FROM cleaned_master_environmental_impact_dataset;
SELECT Country, City, `AQI Value` FROM cleaned_master_environmental_impact_dataset WHERE `AQI Value` > 100;

SELECT ï»¿Country,
       COUNT(DISTINCT City) AS Total_Cities
FROM cleaned_master_environmental_impact_dataset
GROUP BY ï»¿Country
ORDER BY Total_Cities DESC;

SELECT ï»¿Country,
       AVG(`PM2.5 AQI Value`) AS Avg_PM25
FROM cleaned_master_environmental_impact_dataset
GROUP BY ï»¿Country
ORDER BY Avg_PM25 DESC;

SELECT `AQI Category`, COUNT(*) AS Total FROM cleaned_master_environmental_impact_dataset GROUP BY `AQI Category`;

SELECT ï»¿Country,City,`AQI Value` FROM cleaned_master_environmental_impact_dataset ORDER BY `AQI Value` DESC LIMIT 10;


