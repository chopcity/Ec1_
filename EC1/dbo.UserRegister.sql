CREATE TABLE [dbo].[Table]
(
	[UserId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [fname] VARCHAR(50) NULL, 
    [lname] VARCHAR(50) NULL, 
    [email] VARCHAR(50) NULL, 
    [DOB] DATE NULL, 
    [phoneNumber] INT NULL, 
    [password] VARCHAR(50) NULL, 
    [Cpassword] VARCHAR(50) NULL
)
