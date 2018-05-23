CREATE TABLE [dbo].[Addresses]
(
	[AddressId]					INT NOT NULL IDENTITY(1,1),
    [PostalAddressLine1]       [dbo].[ct_addressline] NOT NULL,
    [PostalAddressLine2]       [dbo].[ct_addressline] NULL,
    [PostalCode]               [dbo].[ct_postalcode]  NOT NULL,
    [PostalCity]               [dbo].[ct_city]        NOT NULL,
    [CreatedDate]              DATETIME               NOT NULL,
    [EditedDate]               DATETIME               NOT NULL,
    CONSTRAINT [PK_Addresses_AddressId] PRIMARY KEY CLUSTERED ([AddressId] ASC)
)
