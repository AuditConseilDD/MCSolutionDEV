CREATE TABLE [dbo].[Activities] (
    [ActivityID]       INT                   IDENTITY (1, 1) NOT NULL,
    [ActivityReportID] INT                   NULL,
    [PersonID]       [dbo].[ct_Personid] NOT NULL,
    [InvoiceNumber]    NVARCHAR (50)         NULL,
    [ActivityTypeID]   INT                   NOT NULL,
    [InsertedDate]     DATETIME              NOT NULL,
    [PaymentDeadline]  DATETIME              NULL,
    [ActivityDate]     DATE                  NOT NULL,
    [NbrDays]          DECIMAL (7, 3)        NOT NULL,
    [EndPersonID]    INT                   NULL,
    CONSTRAINT [PK_Activities_Act_ActivityID] PRIMARY KEY CLUSTERED ([ActivityID] ASC),
    CONSTRAINT [FK_265] FOREIGN KEY ([ActivityTypeID]) REFERENCES [dbo].[ActivityTypes] ([ActivityTypesID]),
    CONSTRAINT [FK_Activities_Act_ActivityReportID] FOREIGN KEY ([ActivityReportID]) REFERENCES [dbo].[ActivityReports] ([ActivityReportID]),
    CONSTRAINT [FK_Activities_Act_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
    CONSTRAINT [FK_Activities_Act_EndPersonID] FOREIGN KEY ([EndPersonID]) REFERENCES [dbo].[Persons] ([PersonID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_ActivityReportID]
    ON [dbo].[Activities]([ActivityReportID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_PersonID]
    ON [dbo].[Activities]([PersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_Activities_Act_EndPersonID]
    ON [dbo].[Activities]([EndPersonID] ASC);


GO
CREATE NONCLUSTERED INDEX [fkIdx_265]
    ON [dbo].[Activities]([ActivityTypeID] ASC);

