CREATE TABLE [dbo].[ActivityReports] (
    [ActivityReportID]                INT                   IDENTITY (1, 1) NOT NULL,
    [DateCreation]                    DATETIME              NOT NULL,
    [CustomerID]                      [dbo].[ct_customerid] NOT NULL,
    [EndCustomerID]                   [dbo].[ct_customerid] NOT NULL,
    [AgentCustomerID]                 [dbo].[ct_customerid] NOT NULL,
    [HasBeenSentByEmail]              BIT                   NOT NULL,
    [IsSignedByCustomer]              BIT                   NULL,
    [IsSignedByEndCustomer]           BIT                   NULL,
    [IsSignedByAgentCustomer]         BIT                   NULL,
    [IsRejectedByEndCustomer]         BIT                   NULL,
    [RejectionDetailsEndCustomerID]   INT                   NULL,
    [IsRejectedByAgentCustomer]       BIT                   NULL,
    [RejectionDetailsAgentCustomerID] INT                   NULL,
    CONSTRAINT [PK_ActivityReports_ARpt_ActivityReportID] PRIMARY KEY CLUSTERED ([ActivityReportID] ASC),
    CONSTRAINT [FK_ActivityReports_ARpt_AgentCustomerID] FOREIGN KEY ([AgentCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_ActivityReports_ARpt_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_ActivityReports_ARpt_EndCustomerID] FOREIGN KEY ([EndCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_ActivityReports_ARpt_RejectionDetailsAgentCustomerID] FOREIGN KEY ([RejectionDetailsAgentCustomerID]) REFERENCES [dbo].[ActivityReportRejectionDetails] ([ActivityReportRejectionDetailsID]),
    CONSTRAINT [FK_ActivityReports_ARpt_RejectionDetailsEndCustomerID] FOREIGN KEY ([RejectionDetailsEndCustomerID]) REFERENCES [dbo].[ActivityReportRejectionDetails] ([ActivityReportRejectionDetailsID])
);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_AgentCustomerID]
    ON [dbo].[ActivityReports]([AgentCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_CustomerID]
    ON [dbo].[ActivityReports]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_EndCustomerID]
    ON [dbo].[ActivityReports]([EndCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_RejectionDetailsAgentCustomerID]
    ON [dbo].[ActivityReports]([RejectionDetailsAgentCustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_ActivityReports_ARpt_RejectionDetailsEndCustomerID]
    ON [dbo].[ActivityReports]([RejectionDetailsEndCustomerID] ASC);

