CREATE TABLE [dbo].[Address] (
    [AdressId]     INT           IDENTITY (1, 1) NOT NULL,
    [AddressLine]  VARCHAR (100) NOT NULL,
    [AddressLine2] VARCHAR (100) NULL,
    [AddressType]  VARCHAR (50)  DEFAULT ('Unknown') NULL,
    [City]         VARCHAR (50)  NOT NULL,
    [PostalCode]   VARCHAR (6)   NOT NULL,
    [State]        VARCHAR (20)  NOT NULL,
    [Country]      VARCHAR (50)  DEFAULT ('Unknown') NULL,
    [CustomerId]   INT           NULL,
    PRIMARY KEY CLUSTERED ([AdressId] ASC),
    CHECK ([AddressType]='Unknown' OR [AddressType]='Billing' OR [AddressType]='Shipping'),
    CHECK ([Country]='Unknown' OR [Country]='United States' OR [Country]='Canada'),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);

