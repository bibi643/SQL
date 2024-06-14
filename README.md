
# SQL
Practice on SQL

# Frangrance_SQL
To practice SQL on self created Fragrance Database

![Static Badge](https://img.shields.io/badge/SQL-red) ![Static Badge](https://img.shields.io/badge/DataBase-green) ![Static Badge](https://img.shields.io/badge/Git-cyan)



# Overview
To practice SQL, I create different csv files to produce a database for fragrances I smelt or used in the past.

# Schema

![screenshot](Diagram_Fragrance_Project.png)

It has been tried to create a database with a star structure as it can be observed on the image.

- Fragrance(**Fragrance_ID**, #Designer_ID, Name, #Type_ID, Top_note, Middle_note, Base_note, #Season_ID, #Duration_ID, Comment, #Nose_ID, Release_year, Note)
- Type(**Type_ID**, Type_name)
- Duration(**Duration_ID**, Duration)
- Designer(**Designer_ID**, Designer_Name)
- Season(**Season_ID**, Season_name)
- Nose(**Nose_ID**, Name)

It has been created directly via csv files. It will be perform the same creation using SQL command for the sake of practice too.

The schema and SQL commands have been written and tested in DBeaver and DB Browzer for sqlite.

## Normalisations Check
This check makes the database structure more robust to change and update, limiting 

### First Normal Form (1 NF)
#### Violations type of 1 NF
- Using row order to convey information -> **Be explicit**
- Mixing data type within a column.
- Designing a table without any Primary Key.
- Storing multiple groups within a column. For example multiple items in the same column. **Make it harder to query it**. -> Create another table with **multiple columns as Primary key** (client & Item)

### Second Normal Form (2 NF)
How about non keys columns(Non key attributes) are related to Primary key

-> **Each non key columns has to be dependant on the ENTIRE Primary Key**.

{Player_ID, Item_ID} -> {Item_Qty} 
The Item_Qty column depends on the whole PK, because it is specific to a player and to an item.

{Player_ID} -> {Player_Rating} 
Player_Rating only depends the player_ID, so it is not depending on the whole PK. It is violating 2NF.

If it is not the case we can have some anomalies issues such as:
- Deletion Anomalies
- Update Anomalies
- Insertion Anomalies


### Third Normal Form (3 NF)





