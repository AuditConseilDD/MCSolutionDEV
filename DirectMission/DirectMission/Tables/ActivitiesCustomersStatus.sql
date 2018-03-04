CREATE TABLE [dbo].[ActivitiesCustomersStatus] (
    [ActivitiesCustomersStatusesID] INT      IDENTITY (1, 1) NOT NULL,
    [Activityid]                    INT      NOT NULL,
    [ActivityStatusID]              INT      NOT NULL,
    [SetStatusDate]                 DATETIME NOT NULL,
    [IsCurrent]                     BIT      NOT NULL,
    CONSTRAINT [PK_ActivitiesCustomersStatus_ActivitiesCustomersStatusesID_Activityid_ActivityStatusID] PRIMARY KEY CLUSTERED ([ActivitiesCustomersStatusesID] ASC, [Activityid] ASC, [ActivityStatusID] ASC),
    CONSTRAINT [FK_ActivitiesCustomersStatus_ACSt_Activityid] FOREIGN KEY ([Activityid]) REFERENCES [dbo].[ActivityReports] ([ActivityReportID]),
    CONSTRAINT [FK_ActivitiesCustomersStatus_ACSt_ActivityStatusID] FOREIGN KEY ([ActivityStatusID]) REFERENCES [dbo].[ActivityStatuses] ([ActivityStatusID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivitiesCustomersStatus_ACSt_Activityid]
    ON [dbo].[ActivitiesCustomersStatus]([Activityid] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivitiesCustomersStatus_ACSt_ActivityStatusID]
    ON [dbo].[ActivitiesCustomersStatus]([ActivityStatusID] ASC);

