CREATE TABLE [dbo].[Emails]
(
	[EmailId]			INT NOT NULL IDENTITY(1,1),
	[EmailAddress]		[dbo].[ct_email]       NOT NULL,
	[DateCreation]		DATETIME,
	[SentCount]			INT,
	[OpenedCount]		INT,
	[ConfirmedOptIn]	BIT,
	[Unsubscribed]		BIT,
	[Blacklisted]		BIT,
	[HardBouncesCount]	INT,
	[SoftBouncesCount]	INT,
	[SpamComplaint]		INT,
	[FeedbackLoop]		NVARCHAR(50),
    CONSTRAINT		[PK_Emails_EmailId] PRIMARY KEY CLUSTERED ([EmailId] ASC),

)

GO

CREATE UNIQUE NONCLUSTERED INDEX [uncidx_Emails_EmailAddress] ON [dbo].[Emails] ([EmailAddress])
GO