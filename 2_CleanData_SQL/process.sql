-- database: data.db
-- 1. Find missing values
-- I Found the missing value at Genre column,
-- there is 56 distinc value
-- because my purpose related with Genre, i can remove that missing value
SELECT * FROM selling_books
where Genre = "";

-- Remove Missing Values
DELETE FROM selling_books
WHERE Genre = "";

-- 2. Find Duplicate value
-- Nothing duplicate value

-- 3. fix format value in genre
-- a. i found mystery thriller and mystery-thriller, i think both of same
-- Fix it
UPDATE selling_books
SET Genre = "Mystery thriller"
WHERE Genre = "Mystery-thriller";

-- b. Young Adult Fiction and Young adult fiction or other value have same meaning change to upper letter
UPDATE selling_books
SET Genre = upper(trim(Genre));

