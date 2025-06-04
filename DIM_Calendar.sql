--Cleansed Dim_DateTable--
 SELECT A.DateKey, 
        A.FullDateAlternateKey AS Date,
        A.EnglishDayNameOfWeek AS Day,
        A.WeekNumberOfYear AS WeekNr,
        A.EnglishMonthName AS Month,
        LEFT(A.EnglishMonthName,3) AS MonthShort,
        A.MonthNumberOfYear AS MonthNr,
        A.CalendarQuarter AS Quarter,
        A.CalendarYear AS Year 
 FROM DBO.DimDate AS A
 WHERE CalendarYear >= 2019