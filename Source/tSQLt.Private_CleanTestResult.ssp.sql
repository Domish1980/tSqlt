IF OBJECT_ID('tSQLt.Private_CleanTestResult') IS NOT NULL DROP PROCEDURE tSQLt.Private_CleanTestResult;
GO
---Build+
GO
CREATE PROCEDURE tSQLt.Private_CleanTestResult
AS
BEGIN
   TRUNCATE TABLE tSQLt.TestResult;
END;
GO
---Build-
GO
