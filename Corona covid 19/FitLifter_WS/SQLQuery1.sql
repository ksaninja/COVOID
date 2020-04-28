CREATE TABLE [dbo].[FITLIFTER_USERS_TABLE] (
    [CounterID]            INT            IDENTITY (1, 1) NOT NULL,
    [UserID]              AS             ('USR00'+CONVERT([nvarchar],[CounterID])) PERSISTED NOT NULL,
	[UserFristName]        NVARCHAR (MAX) NULL,
	[UserLastName]        NVARCHAR (MAX) NULL,
	[UserEmail]        NVARCHAR (MAX) NULL,
    [UserPassword]        NVARCHAR (MAX) NULL,
    [UserCountry]        NVARCHAR (MAX) NULL,
    [UserCity]           NVARCHAR (MAX) NULL,
    [UserGender] NVARCHAR (MAX) NULL,
    [UserImgUrl] NVARCHAR (MAX) NULL,
    [UserAcctivated]        NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);
