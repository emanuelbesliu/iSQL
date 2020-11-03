SELECT    DATEPART(YEAR, Timestamp) AS 'Year',
          DATEPART(MONTH, Timestamp) AS 'Month',
          DATEPART(DAY, Timestamp) AS 'Day',
          COUNT(*) AS 'Visits'
FROM      (change_table_name)
GROUP BY  DATEPART(DAY, Timestamp),
          DATEPART(MONTH, Timestamp),
          DATEPART(YEAR, Timestamp)
ORDER BY  'Year',
          'Month',
          'Day'
