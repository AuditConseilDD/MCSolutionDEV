CREATE TABLE [dbo].[PersonAddress]
(
	[PersonAddressId]			INT NOT NULL IDENTITY(1,1),
	[PersonID]					[dbo].[ct_Personid],
	[AddressId]					INT NOT NULL,
    CONSTRAINT [PK_PersonAddress_PersonAddressId] PRIMARY KEY CLUSTERED ([PersonAddressId] ASC),
	CONSTRAINT [FK_PersonAddress_Persons_PersonID] FOREIGN KEY ([PersonID]) REFERENCES [dbo].[Persons] ([PersonID]),
	CONSTRAINT [FK_PersonAddress_Addresses_AddressID] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Addresses] ([AddressID])
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [uncidx_PersonAddress_PersonID_AddressID] ON [dbo].[PersonAddress]
(	[PersonID],
	[AddressId])
GO