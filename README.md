
# SQL
Practice on SQL

# Frangrance_SQL
To practice SQL on self created Fragrance Database

![Static Badge](https://img.shields.io/badge/SQL-red) ![Static Badge](https://img.shields.io/badge/DataBase-green) ![Static Badge](https://img.shields.io/badge/Git-cyan)



# Overview
To practice SQL, I create different csv files to produce a database for fragrances I smelt or used in the past.
It has been used the main SQL Keywords, Operators, & Statements such as
- [x] SELECT
- [x] JOIN
- [x] CREATE TABLE

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

Finally it has been attempted to make a Database following the Normalisations Check, to make it robust to different scenarios, such as deleting, adding, modifying the database.



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

- Problematic called **transitive dependencies**:
Player(**Player_ID**, PLayer_Rating, PLayer_Skill_Level)

 {Player_ID} -> {PLayer_Skill_Level}
 {Player_ID} -> {Player_Skill_Level} -> {Player_Rating}. We can see here a non key attribute depends on another non key attribute.
 - Solution

Player (**Player_ID**, Player_skill_level)
Player_Skill_Levels(**Player_Skill_Level**, Player_Rating)

**Every non key attribute in a table should depend on the key, the whole key, and nothing but the key.**
 
 An even stronger version of it is **Boyce-Codd Normal Form**.

 **Every attribute in a table should depend on the key, the whole key, and nothing but the key.**


### Fourth Normal Form (4 NF)
Usually it is not needed to go so far, as the database would be already super robust following the previous Normal forms.
Multivalued dependencies problematic
Model_Color_Style(**Model, Color, Style**)
{Model} ->>{Color}
{Model}->>{Style}

**4 NF says that Multivalued dependencies in a table must be multivalued dependencies on the key.**
Here we see that the dependencies are only on the model and not on the whole keys.

- Solution
Model_color(**Model, Color**)
Model_Style(**Model,Stytle**)



### Fifth Normal Form
Rule:
**It must not be possible to descrbie the table as being the logical result of joining other table together.**

