##ASSIGNMENT7##

use SQLAssignments

WITH t1 AS(
SELECT * , ROW_NUMBER() OVER(ORDER BY ID) row_no
FROM Worker
)
SELECT * 
FROM t1
WHERE t1.row_no %2!=0

SELECT*
INTO Worker_Clone
FROM Worker
SELECT * FROM Worker_Clone