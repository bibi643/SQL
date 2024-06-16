-- To have a global view of fragrances I tested
SELECT * FROM Fragrances;

-- Returns The Designers I tested
SELECT DISTINCT Designer_ID FROM Fragrances;

-- Returns The fragrances having an outstanding Rating
SELECT Designer_ID, Name, Type_ID, Nose_ID
FROM Fragrances
WHERE Ratings >=18;






-- Returns the Fragrancies I may like based on the Top, MIddle, Base Note. This is not casesensitive--
SELECT *
FROM Fragrances
where (Top_Note || Middle_Note|| Base_Note) like '%SandalWood%';




-- Returns the Fragances I may Like based on the comment I put, eg compliment getter.

SELECT Name, Type_ID, Top_Note, Middle_Note, Base_Note, Comment
FROM Fragrances
WHERE Comment LIKE '%compliment%';



-- Returns the Designers in the database but I did not try yet.--
SELECT Designers.Designer_Name, Designers.Designer_Nationality 
FROM Designers
LEFT JOIN Fragrances
ON Designers.Designer_Name= Fragrances.Designer_ID
WHERE Designer_ID IS NULL;


-- Sort the avg of ratings by designers.
SELECT Designer_ID, AVG(Ratings) AS AVG_Ratings
FROM Fragrances
GROUP BY Designer_ID
ORDER BY AVG_Ratings DESC;



-- Let's add Loewe in Designers Table

INSERT INTO Designers VALUES('Loewe', 'Spanish');




-- Add the count of fragrance We have in the fragracnes but in the designers. So we know how many fragrnaces we have tested for each designers.

SELECT Designers.Designer_Name, COUNT(Fragrances.Designer_ID) as Fragrances_per_Designers
FROM Designers
LEFT JOIN Fragrances
ON Designers.Designer_Name= Fragrances.Designer_ID
GROUP BY Designer_Name
;




