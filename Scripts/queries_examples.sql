-- To have a global view of fragrances I tested
SELECT * FROM Fragrances;

-- Returns The Designers I tested
SELECT DISTINCT Designer_ID FROM Fragrances;

-- Returns The fragrances having an outstanding Rating
SELECT Designer_ID, Name, Type_ID, Nose_ID
FROM Fragrances
WHERE Ratings >=18;





-- -- 
-- Returns the Fragrancies I may like based on the Top, MIddle, Base Note.--





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


-- DISTINCT COUNT AVG DES RATINGS
