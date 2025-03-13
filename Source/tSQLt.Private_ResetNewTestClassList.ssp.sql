IF OBJECT_ID('tSQLt.Private_ResetNewTestClassList') IS NOT NULL DROP PROCEDURE tSQLt.Private_ResetNewTestClassList;
GO
---Build+
GO
CREATE PROCEDURE tSQLt.Private_ResetNewTestClassList
AS
BEGIN
  SET NOCOUNT ON;
  TRUNCATE TABLE tSQLt.Private_NewTestClassList;
END;
GO
---Build-
GO
