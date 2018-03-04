CREATE TABLE [dbo].[CustomerAccountStatuses] (
    [CustomerAccountStatusID]   TINYINT       NOT NULL,
    [CustomerAccountStatusName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CustomerAccountStatuses_CAccSt_CustomerAccountStatusID] PRIMARY KEY CLUSTERED ([CustomerAccountStatusID] ASC)
);

