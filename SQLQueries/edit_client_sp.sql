USE [Store]
GO
/****** Object:  StoredProcedure [dbo].[Edit_patient]    Script Date: 3/19/2023 11:10:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Edit_patient]
	-- Add the parameters for the stored procedure here
	@id		int,
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
	UPDATE clients
    SET name=@name, email=@email, phone=@phone, address=@address
    WHERE id=@id;
	
END
