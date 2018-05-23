CREATE TABLE [dbo].[PersonEmails]
(
	[PersonEmailsId] INT NOT NULL IDENTITY(1,1),
	[PersonID]					[dbo].[ct_Personid],
	[EmailId]					INT NOT NULL,
    CONSTRAINT [PK_PersonEmails_PersonAddressId] PRIMARY KEY CLUSTERED ([PersonEmailsId] ASC),
	CONSTRAINT [FK_PersonEmails_Persons_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
	CONSTRAINT [FK_PersonEmails_Addresses_AddressID] FOREIGN KEY ([EmailId]) REFERENCES [dbo].[Emails] ([EmailId])

)
GO

CREATE UNIQUE NONCLUSTERED INDEX [uncidx_PersonEmails_PersonID_EmailID] ON [dbo].[PersonEmails]
(	[PersonID],
	[EmailId])
GO
