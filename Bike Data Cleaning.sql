SELECT * FROM projects.bike;

UPDATE bike SET marital_status = REPLACE(marital_status, 'M', 'Married');

UPDATE bike SET marital_status = REPLACE(marital_status, 'S', 'Single');

UPDATE bike SET gender = REPLACE(gender, 'M', 'Male');

UPDATE bike SET gender = REPLACE(gender, 'F', 'Female');

UPDATE bike SET Income = REPLACE(Income, '$', '');

UPDATE bike SET Income = REPLACE(Income, '.00', '');

UPDATE bike SET commute_distance = REPLACE(commute_distance, '10+ Miles', 'More than 10 Miles');

ALTER TABLE bike
ADD COLUMN age_bracket TEXT NOT NULL AFTER purchased_bike;

SELECT age, IF(Age>54,"Old",IF(Age>30,"Middle_Age",IF(Age<31,"Adolescents","Invalid")))
FROM projects.bike
WHERE age;

UPDATE bike 
SET age_bracket = IF(Age>54,"Old",IF(Age>30,"Middle_Age",IF(Age<31,"Adolescents","Invalid")));




