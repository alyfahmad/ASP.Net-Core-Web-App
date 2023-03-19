USE [Store]
GO
/****** Object:  StoredProcedure [dbo].[Add_patient]    Script Date: 3/19/2023 11:10:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Add_patient]
	@name	varchar(100),
	@email	varchar(150),
	@phone	varchar(20)  null,
	@address	varchar(100) null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO clients (name, email, phone, address) VALUES (@name, @email, @phone, @address);
END
