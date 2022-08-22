CREATE TABLE [dbo].[Customer] (
    [CustomerId]           INT          IDENTITY (1, 1) NOT NULL,
    [FirstName]            VARCHAR (50) NULL,
    [LastName]             VARCHAR (50) NOT NULL,
    [PhoneNumber]          VARCHAR (13) DEFAULT ('Unknown') NULL,
    [Email]                VARCHAR (50) DEFAULT ('Unknown') NULL,
    [TotalPurchasesAmount] MONEY        NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC),
    CHECK ([Email] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'),
    CHECK ([PhoneNumber] like '[+][0-9]%'),
    CHECK ([TotalPurchasesAmount]>(0))
);

