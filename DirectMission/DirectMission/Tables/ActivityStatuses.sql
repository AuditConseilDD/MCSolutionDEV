CREATE TABLE [dbo].[ActivityStatuses] (
    [ActivityStatusID] INT          IDENTITY (1, 1) NOT NULL,
    [ActivityID]       INT          NOT NULL,
    [ActiviyStatus]    VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ActivityStatuses_ASt_ActivityStatusID] PRIMARY KEY CLUSTERED ([ActivityStatusID] ASC),
    CONSTRAINT [FK_ActivityStatuses_ASt_ActivityID] FOREIGN KEY ([ActivityID]) REFERENCES [dbo].[ActivityReports] ([ActivityReportID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityStatuses_ASt_ActivityID]
    ON [dbo].[ActivityStatuses]([ActivityID] ASC);

