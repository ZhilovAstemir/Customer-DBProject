CREATE TABLE [dbo].[Notes] (
    [NoteId]     INT          IDENTITY (1, 1) NOT NULL,
    [Note]       VARCHAR (50) NULL,
    [CustomerId] INT          NULL,
    PRIMARY KEY CLUSTERED ([NoteId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);

