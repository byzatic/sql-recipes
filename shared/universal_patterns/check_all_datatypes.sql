--PostgreSQL
--
--Explanation
--	•	information_schema.columns — standard system view that provides metadata about all table columns.
--	•	column_name — name of the column in the table.
--	•	data_type — SQL data type of the column (e.g., integer, text, timestamp).
--	•	table_schema = 'public' — filters only tables in the public schema.
--	•	table_name = 'my_table' — filters by the table of interest. Replace 'my_table' with the actual table name.
--	•	ordinal_position — ensures the columns are listed in their defined order.
--
--Use Case
--Useful for:
--	•	Inspecting schema structure
--	•	Validating column types before writing queries or migrations
--	•	Generating documentation

SELECT
    column_name,
    data_type
FROM
    information_schema.columns
WHERE
    table_schema = 'public'
    AND table_name = 'my_table'
ORDER BY
    ordinal_position;