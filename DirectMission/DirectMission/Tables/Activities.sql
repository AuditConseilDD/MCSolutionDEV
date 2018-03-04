CREATE TABLE [dbo].[Activities] (
    [ActivityID]       INT                   IDENTITY (1, 1) NOT NULL,
    [ActivityReportID] INT                   NULL,
    [CustomerID]       [dbo].[ct_customerid] NOT NULL,
    [InvoiceNumber]    NVARCHAR (50)         NULL,
    [ActivityTypeID]   INT                   NOT NULL,
    [InsertedDate]     DATETIME              NOT NULL,
    [PaymentDeadline]  DATETIME              NULL,
    [ActivityDate]     DATE                  NOT NULL,
    [NbrDays]          DECIMAL (7, 3)        NOT NULL,
    [EndCustomerID]    INT                   NULL,
    CONSTRAINT [PK_Activities_Act_ActivityID] PRIMARY KEY CLUSTERED ([ActivityID] ASC),
    CONSTRAINT [FK_265] FOREIGN KEY ([ActivityTypeID]) REFERENCES [dbo].[ActivityTypes] ([ActivityTypesID]),
    CONSTRAINT [FK_Activities_Act_ActivityReportID] FOREIGN KEY ([ActivityReportID]) REFERENCES [dbo].[ActivityReports] ([ActivityReportID]),
    CONSTRAINT [FK_Activities_Act_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Activities_Act_EndCustomerID] FOREIGN KEY ([EndCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_ActivityReportID]
    ON [dbo].[Activities]([ActivityReportID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_CustomerID]
    ON [dbo].[Activities]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_EndCustomerID]
    ON [dbo].[Activities]([EndCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [fkIdx_265]
    ON [dbo].[Activities]([ActivityTypeID] ASC);

