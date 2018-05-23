CREATE TABLE [dbo].[PersonAccountStatuses] (
    [PersonAccountStatusID]   TINYINT       NOT NULL,
    [PersonAccountStatusName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PersonAccountStatuses_CAccSt_PersonAccountStatusID] PRIMARY KEY CLUSTERED ([PersonAccountStatusID] ASC)
);

