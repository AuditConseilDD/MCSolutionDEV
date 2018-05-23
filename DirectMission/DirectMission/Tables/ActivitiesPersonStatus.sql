CREATE TABLE [dbo].[ActivitiesPersonsStatus] (
    [ActivitiesPersonsStatusesID] INT      IDENTITY (1, 1) NOT NULL,
    [Activityid]                    INT      NOT NULL,
    [ActivityStatusID]              INT      NOT NULL,
    [SetStatusDate]                 DATETIME NOT NULL,
    [IsCurrent]                     BIT      NOT NULL,
    CONSTRAINT [PK_ActivitiesPersonsStatus_ActivitiesPersonsStatusesID_Activityid_ActivityStatusID] PRIMARY KEY CLUSTERED ([ActivitiesPersonsStatusesID] ASC, [Activityid] ASC, [ActivityStatusID] ASC),
    CONSTRAINT [FK_ActivitiesPersonsStatus_ACSt_Activityid] FOREIGN KEY ([Activityid]) REFERENCES [dbo].[ActivityReports] ([ActivityReportID]),
    CONSTRAINT [FK_ActivitiesPersonsStatus_ACSt_ActivityStatusID] FOREIGN KEY ([ActivityStatusID]) REFERENCES [dbo].[ActivityStatuses] ([ActivityStatusID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivitiesPersonsStatus_ACSt_Activityid]
    ON [dbo].[ActivitiesPersonsStatus]([Activityid] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivitiesPersonsStatus_ACSt_ActivityStatusID]
    ON [dbo].[ActivitiesPersonsStatus]([ActivityStatusID] ASC);

