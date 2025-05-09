IF OBJECT_ID('tSQLt.Private_TableToTextNumberedColumnsWithSeparator') IS NOT NULL DROP FUNCTION tSQLt.Private_TableToTextNumberedColumnsWithSeparator;
GO
---Build+
GO
CREATE FUNCTION tSQLt.Private_TableToTextNumberedColumnsWithSeparator(
    @tmpObjectId INT
)
RETURNS TABLE
AS
RETURN
  SELECT 
    (
      SELECT 
          'sep+C'+
          RIGHT(CAST(10002+ROW_NUMBER()OVER(ORDER BY column_id) AS NVARCHAR(MAX)),4)+
          '+' 
        FROM sys.columns 
       WHERE object_id = @tmpObjectId 
         AND column_id>1
       ORDER BY column_id 
         FOR XML PATH(''),TYPE
    ).value('.','NVARCHAR(MAX)') [ColumnList];
    