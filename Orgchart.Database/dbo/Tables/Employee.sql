﻿CREATE TABLE [dbo].[Employee] (
    [EMPLOYEE_ID]   INT            IDENTITY (1, 1) NOT NULL,
    [FIRST_NAME]    NVARCHAR (20)  NOT NULL,
    [LAST_NAME]     NVARCHAR (45)  NOT NULL,
    [EMAIL]         NVARCHAR (100) CONSTRAINT [DF__EMPLOYEE__EMAIL__164452B1] DEFAULT (NULL) NULL,
    [SKYPE_NAME]    NVARCHAR (100) CONSTRAINT [DF__EMPLOYEE__SKYPE___173876EA] DEFAULT (NULL) NULL,
    [JOB_TITLE_ID]  INT            CONSTRAINT [DF__EMPLOYEE__JOB_TI__182C9B23] DEFAULT (NULL) NULL,
    [IS_MANAGER]    BIT            CONSTRAINT [DF__EMPLOYEE__IS_MAN__1920BF5C] DEFAULT ((0)) NOT NULL,
    [MANAGER_ID]    INT            CONSTRAINT [DF__EMPLOYEE__MANAGE__1A14E395] DEFAULT (NULL) NULL,
    [DEPARTMENT_ID] INT            CONSTRAINT [DF__EMPLOYEE__DEPART__1B0907CE] DEFAULT (NULL) NULL,
    CONSTRAINT [PK__EMPLOYEE__CBA14F480B3DA900] PRIMARY KEY CLUSTERED ([EMPLOYEE_ID] ASC),
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DEPARTMENT_ID]) REFERENCES [dbo].[Department] ([DEPARTMENT_ID]),
    CONSTRAINT [FK_Employee_Employee] FOREIGN KEY ([MANAGER_ID]) REFERENCES [dbo].[Employee] ([EMPLOYEE_ID]),
    CONSTRAINT [FK_Employee_Job_Title] FOREIGN KEY ([JOB_TITLE_ID]) REFERENCES [dbo].[Job_Title] ([JOB_TITLE_ID])
);
