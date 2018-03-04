CREATE TABLE [dbo].[ActivityReportRejectionDetails] (
    [ActivityReportRejectionDetailsID] INT            IDENTITY (1, 1) NOT NULL,
    [Details]                          NVARCHAR (512) NOT NULL,
    CONSTRAINT [PK_ActivityReportRejectionDetails_ARejD_ActivityReportRejectionDetailsID] PRIMARY KEY CLUSTERED ([ActivityReportRejectionDetailsID] ASC)
);

