CREATE TABLE [dbo].[Companies]
(
	[CompanyId]					INT NOT NULL IDENTITY(1,1),
	[CompanyName]				NVARCHAR(100) NOT NULL,
	[VATNumber]					NVARCHAR(40) NOT NULL,
    [PhoneNumber]				[dbo].[ct_phone]       NOT NULL,
    [FaxNumber]					[dbo].[ct_phone]       NULL,
    CONSTRAINT		[PK_Companies_CompanyId] PRIMARY KEY CLUSTERED ([CompanyId] ASC)
)
GO