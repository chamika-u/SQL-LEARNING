-- Task 4: 4. Optimization with 
	-- Discuss the creation of indexes on any columns used frequently in WHERE clauses or as join keys to improve performance.

CREATE INDEX idx_claims_claimdate ON Claims(ClaimDate);

-- Explanation:
-- The above SQL statement creates an index on the ClaimDate column in the Claims table.    
-- This index will improve the performance of queries that filter or sort by ClaimDate, as it allows the database to quickly locate relevant records without scanning the entire table.
-- Indexes are particularly beneficial for columns that are frequently used in WHERE clauses or as join keys because they can significantly reduce the time it takes to retrieve data, especially as the size of the table grows.
