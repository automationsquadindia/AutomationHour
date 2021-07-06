USE [RPA]
GO


SELECT * FROM  [dbo].[Employee];

/* ---------------------------------*/

CREATE PROCEDURE Sp_EmpInsert
(
	@EmpID numeric(18,0),
	@EmpName nvarchar(50),
	@EmpEmail nvarchar(50),
	@EmpDeptt nvarchar(50)
)
AS
INSERT INTO [dbo].[Employee]
     VALUES
           (@EmpID
           ,@EmpName
           ,@EmpEmail
           ,@EmpDeptt)



EXEC Sp_EmpInsert @EmpID=1, @EmpName='Andrew Boz', @EmpEmail='andrew_boz@xyz.com', @EmpDeptt='Engineering'

/* ---------------------------------*/

CREATE PROCEDURE Sp_EmpSelect
(
	@Deptt nvarchar(50)
)
AS
Select * from [dbo].[Employee] WHERE EmpDeptt=@Deptt


EXEC Sp_EmpSelect @Deptt='Engineering'




