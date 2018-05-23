CREATE TABLE [dbo].[EmailSentStatuses] (
    [EmailSentStatusID] TINYINT        IDENTITY (1, 1) NOT NULL,
    [Label]         NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_EmailStatuses_Emst_EmailStatusID] PRIMARY KEY CLUSTERED ([EmailSentStatusID] ASC)
);

