USE [NGANHANG]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MACN] [nchar](10) NOT NULL,
	[TENCN] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NOT NULL,
	[SoDT] [nvarchar](15) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_166CB54ED0464A4B9CF8D4C99DA945C3]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_ChiNhanh] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_ChiNhanh] UNIQUE NONCLUSTERED 
(
	[TENCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GD_CHUYENTIEN]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD_CHUYENTIEN](
	[MAGD] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SOTK_CHUYEN] [nchar](9) NOT NULL,
	[NGAYGD] [datetime] NOT NULL CONSTRAINT [DF_GD_CHUYENTIEN_NGAYGD]  DEFAULT (getdate()),
	[SOTIEN] [money] NOT NULL,
	[SOTK_NHAN] [nchar](9) NOT NULL,
	[MANV] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_D4E4FCBBD45B44C29FE299F728C02192]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GD_CHUYENTIEN] PRIMARY KEY CLUSTERED 
(
	[MAGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GD_GOIRUT]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GD_GOIRUT](
	[MAGD] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SOTK] [nchar](9) NOT NULL,
	[LOAIGD] [nchar](2) NOT NULL,
	[NGAYGD] [datetime] NOT NULL CONSTRAINT [DF_GD_GOIRUT_NGAYGD]  DEFAULT (getdate()),
	[SOTIEN] [money] NOT NULL CONSTRAINT [DF_GD_GOIRUT_SOTIEN]  DEFAULT ((100000)),
	[MANV] [nchar](10) NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_AAC056176EC640578AEFD11544A603B7]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_GD_GOIRUT] PRIMARY KEY CLUSTERED 
(
	[MAGD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[CMND] [nchar](10) NOT NULL,
	[HO] [nvarchar](50) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[PHAI] [nvarchar](3) NULL,
	[NGAYCAP] [date] NOT NULL,
	[SODT] [nvarchar](15) NOT NULL,
	[MACN] [nchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_6181E7127C6B4AAE83FBF126D0AE3902]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [nchar](10) NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[PHAI] [nvarchar](3) NOT NULL CONSTRAINT [DF_NhanVien_PHAI]  DEFAULT (N'Nam'),
	[SODT] [nvarchar](15) NOT NULL,
	[MACN] [nchar](10) NULL,
	[TrangThaiXoa] [int] NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_AADED36F27584B8A9090B6B58F96C466]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CMND_NhanVien] UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[SOTK] [nchar](9) NOT NULL,
	[CMND] [nchar](10) NOT NULL,
	[SODU] [money] NULL DEFAULT ((0)),
	[MACN] [nchar](10) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [MSmerge_df_rowguid_DB6FE276A9094C8A97584B9F921E7EB5]  DEFAULT (newsequentialid()),
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[SOTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[V_DS_PHANMANH]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_DS_PHANMANH]
AS
SELECT TOP (2) PUBS.description AS TENCN, SUBS.subscriber_server AS TENSERVER
FROM     dbo.sysmergepublications AS PUBS INNER JOIN
                  dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server

GO
/****** Object:  View [dbo].[V_NHANVIEN]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_NHANVIEN]
AS
SELECT MANV, HO, TEN, HOTEN
FROM (
    SELECT MANV, HO, TEN, (HO + ' ' + TEN) AS HOTEN,
           ROW_NUMBER() OVER (ORDER BY TEN, HO) AS RowNum
    FROM dbo.NHANVIEN
) AS MyDerivedTable
WHERE RowNum > 0
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_NhanVien]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan] FOREIGN KEY([SOTK_CHUYEN])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan1] FOREIGN KEY([SOTK_NHAN])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [FK_GD_CHUYENTIEN_TaiKhoan1]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [FK_GD_GOIRUT_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [FK_GD_GOIRUT_NhanVien]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [FK_GD_GOIRUT_TaiKhoan] FOREIGN KEY([SOTK])
REFERENCES [dbo].[TaiKhoan] ([SOTK])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [FK_GD_GOIRUT_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ChiNhanh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChiNhanh]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ChiNhanh] FOREIGN KEY([MACN])
REFERENCES [dbo].[ChiNhanh] ([MACN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ChiNhanh]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_KhachHang] FOREIGN KEY([CMND])
REFERENCES [dbo].[KhachHang] ([CMND])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_KhachHang]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH CHECK ADD  CONSTRAINT [CK_GD_CHUYENTIEN] CHECK  (([SOTIEN]>(0)))
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [CK_GD_CHUYENTIEN]
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_3DB438BF_A551_4355_B606_4EF5001050FA] CHECK NOT FOR REPLICATION (([MAGD]>(90001) AND [MAGD]<=(91001) OR [MAGD]>(91001) AND [MAGD]<=(92001)))
GO
ALTER TABLE [dbo].[GD_CHUYENTIEN] CHECK CONSTRAINT [repl_identity_range_3DB438BF_A551_4355_B606_4EF5001050FA]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [CK_LOAIGD] CHECK  (([LOAIGD]='RT' OR [LOAIGD]='GT'))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [CK_LOAIGD]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH CHECK ADD  CONSTRAINT [CK_SOTIEN] CHECK  (([SOTIEN]>=(100000)))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [CK_SOTIEN]
GO
ALTER TABLE [dbo].[GD_GOIRUT]  WITH NOCHECK ADD  CONSTRAINT [repl_identity_range_5B8D8837_CC19_44E2_A51D_B0B757546577] CHECK NOT FOR REPLICATION (([MAGD]>(90001) AND [MAGD]<=(91001) OR [MAGD]>(91001) AND [MAGD]<=(92001)))
GO
ALTER TABLE [dbo].[GD_GOIRUT] CHECK CONSTRAINT [repl_identity_range_5B8D8837_CC19_44E2_A51D_B0B757546577]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [CK_KhachHang] CHECK  (([PHAI]='NAM' OR [PHAI]=N'NỮ'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [CK_KhachHang]
GO
/****** Object:  StoredProcedure [dbo].[SP_CheckCMND]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CheckCMND]
	@cmnd NVARCHAR(10)
AS
BEGIN
DECLARE @check int
	IF EXISTS(SELECT * FROM dbo.KhachHang WHERE dbo.KhachHang.CMND = @cmnd)
		SET @check = 1	--Mã tồn tại ở phân mãnh hiện tại	
	ELSE IF EXISTS(SELECT * FROM LINK0.NGANHANG.dbo.KhachHang AS KH WHERE KH.CMND = @cmnd)
		SET @check = 2	--Mã tồn tại ở phân mãnh khác
	ELSE
		SET @check = 0
SELECT @check	--Không bị trùng được thêm
END

GO
/****** Object:  StoredProcedure [dbo].[SP_CheckMANV]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_CheckMANV]
	@maNV NCHAR(10)
AS
BEGIN
DECLARE @check int
	IF EXISTS(SELECT * FROM dbo.NhanVien WHERE dbo.NhanVien.MANV = @maNV)
		SET @check = 1	--Mã tồn tại ở phân mãnh hiện tại	
	ELSE IF EXISTS(SELECT * FROM LINK0.NGANHANG.dbo.NhanVien AS NV WHERE NV.MANV = @maNV)
		SET @check = 2	--Mã tồn tại ở phân mãnh khác
	ELSE
		SET @check = 0
SELECT @check	--Không bị trùng được thêm
END

GO
/****** Object:  StoredProcedure [dbo].[SP_ChuyenCN]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ChuyenCN]
	@manv nvarchar(10),
	@macngo nvarchar(10)
AS
DECLARE @check int
DECLARE @manvmax nvarchar(10) = (RIGHT((SELECT TOP 1 MANV FROM LINK1.NGANHANG.DBO.NhanVien ORDER BY MANV DESC), 2))
IF (@manvmax < 10)
	SET @manvmax = CONCAT('NV', '0', @manvmax + 1)
ELSE
	SET @manvmax = CONCAT('NV', @manvmax + 1)
SET XACT_ABORT ON
BEGIN DISTRIBUTED TRANSACTION
BEGIN TRY
	IF EXISTS (SELECT * FROM LINK1.NGANHANG.DBO.NhanVien
				WHERE SODT = (SELECT SODT FROM NhanVien WHERE MANV = @manv))
	BEGIN
		UPDATE NhanVien
			SET TrangThaiXoa = 1
			WHERE MANV = @manv

		UPDATE LINK1.NGANHANG.DBO.NhanVien
			SET TrangThaiXoa = 0
			WHERE SODT = (SELECT SODT FROM NhanVien WHERE MANV = @manv)
	END
	ELSE
	BEGIN
		INSERT INTO LINK1.NGANHANG.DBO.NhanVien(MANV, HO, TEN,CMND, DIACHI, PHAI, SODT, MACN, TrangThaiXoa)
			SELECT @manvmax AS MANV, HO, TEN,CMND, DIACHI, PHAI, SODT, @macngo AS MACN, 0 FROM NhanVien WHERE MANV = @manv

		UPDATE NhanVien
			SET TrangThaiXoa = 1
			WHERE MANV = @manv
	END

	IF (@@TRANCOUNT > 0)
	BEGIN
		COMMIT TRANSACTION
		SET @check = 1
	END
END TRY
BEGIN CATCH
	IF (@@TRANCOUNT > 0)
	BEGIN
		ROLLBACK TRANSACTION
		SET @check = 0
	END
END CATCH
SELECT @check

GO
/****** Object:  StoredProcedure [dbo].[SP_ChuyenTien]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_ChuyenTien]
	@sotkchuyen nvarchar(10),
	@sotknhan nvarchar(10),
	@sotien money,
	@manv nvarchar(10)
AS
DECLARE @sodu money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotkchuyen)
DECLARE @check int = 1

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotkchuyen)
BEGIN
	SET @check = 2
	SELECT @check
	RETURN
END

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotknhan)
BEGIN
	SET @check = 3
	SELECT @check
	RETURN
END

IF (@sotien <= @sodu)
BEGIN
	SET XACT_ABORT ON
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO GD_CHUYENTIEN(SOTK_CHUYEN, NGAYGD, SOTIEN, SOTK_NHAN, MANV)
			VALUES(@sotkchuyen, GETDATE(), @sotien, @sotknhan, @manv)
		UPDATE TaiKhoan 
			SET SODU = SODU - @sotien
			WHERE SOTK = @sotkchuyen
		UPDATE TaiKhoan 
			SET SODU = SODU + @sotien
			WHERE SOTK = @sotknhan			  
							
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SET @check = 0
	END CATCH
END
ELSE
	SET @check = 4

SELECT @check

GO
/****** Object:  StoredProcedure [dbo].[SP_DangNhap]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_DangNhap]
	@tenLogin nvarchar(50)
AS
BEGIN
	DECLARE @tenUser nvarchar(50)
	SELECT @tenUser = NAME FROM sys.sysusers WHERE sid = SUSER_SID(@tenLogin)
 
	SELECT USERNAME = @tenUser,
		HOTEN = (SELECT HO + ' ' + TEN FROM NHANVIEN WHERE MANV = @tenUser),
		TENNHOM = NAME
	FROM sys.sysusers 
	WHERE UID = (SELECT GROUPUID
                 FROM SYS.SYSMEMBERS
					WHERE MEMBERUID = (SELECT UID FROM sys.sysusers
										WHERE NAME = @tenUser))
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GDGoiRut]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GDGoiRut]
	@sotk nvarchar(10),
	@loaigd nvarchar(2),
	@sotien money,
	@manv nvarchar(10)
AS
DECLARE @sodu money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotk)
DECLARE @check int = 1

IF NOT EXISTS(SELECT * FROM dbo.TaiKhoan AS TK WHERE TK.SOTK = @sotk)
BEGIN
	SET @check = -1
	SELECT @check
	RETURN
END

IF (@loaigd = 'GT')
BEGIN
	SET XACT_ABORT ON
	BEGIN TRANSACTION
	BEGIN TRY
		INSERT INTO GD_GOIRUT(SOTK, LOAIGD, NGAYGD, SOTIEN, MANV)
			VALUES(@sotk, @loaigd, GETDATE(), @sotien, @manv)
		UPDATE TaiKhoan
			SET SODU = SODU + @sotien
			WHERE SOTK = @sotk
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
		SET @check = 0
	END CATCH
END
ELSE
BEGIN
	IF (@sotien > @sodu)
		SET @check = 2
	ELSE
	BEGIN
		SET XACT_ABORT ON
		BEGIN TRANSACTION
		BEGIN TRY
			INSERT INTO GD_GOIRUT(SOTK, LOAIGD, NGAYGD, SOTIEN, MANV)
				VALUES(@sotk, @loaigd, GETDATE(), @sotien, @manv)
			UPDATE TaiKhoan
				SET SODU = SODU - @sotien
				WHERE SOTK = @sotk
			COMMIT TRAN
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN
			SET @check = 0
		END CATCH
	END
END
SELECT @check

GO
/****** Object:  StoredProcedure [dbo].[SP_GetCNChuyen]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GetCNChuyen]
	@macn nvarchar(10)
AS
SELECT MACN, TENCN FROM LINK0.NGANHANG.DBO.ChiNhanh WHERE MACN <> @macn

GO
/****** Object:  StoredProcedure [dbo].[SP_LietKeKhachHang]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_LietKeKhachHang]
AS
SELECT CMND, HOTEN = HO + ' ' + TEN, DIACHI, PHAI, NGAYCAP, SODT
	FROM [dbo].KhachHang
	ORDER BY TEN, HO
GO
/****** Object:  StoredProcedure [dbo].[SP_MoTaiKhoan]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_MoTaiKhoan]
	@cmnd NVARCHAR(10),
	@macn NVARCHAR(10)
AS
BEGIN
	DECLARE @NewSoTK nchar(9) =  CAST(RAND()*1000000000 AS INT)
	WHILE (EXISTS(SELECT SOTK from [dbo].TaiKhoan WHERE [dbo].TaiKhoan.SOTK = @NewSoTK) AND EXISTS(select SOTK from LINK0.NGANHANG.dbo.TaiKhoan as NewSoTK WHERE NewSoTK.SOTK = @NewSoTK))
		BEGIN
			SET @NewSoTK =  CAST(RAND()*1000000000 AS INT)
		END
	INSERT INTO TaiKhoan(SOTK, CMND, SODU,MACN) VALUES (@NewSoTK,@cmnd, 0,@macn);
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaoKeGD]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_SaoKeGD]
	@tungay nvarchar(10),
	@denngay nvarchar(10),
	@sotk nvarchar(10)
AS
SET DATEFORMAT DMY

DECLARE @sodudau money = (SELECT SODU FROM TaiKhoan WHERE SOTK = @sotk)
DECLARE @ngaygd datetime, @loaigd nvarchar(2), @sotien money, @macn nvarchar(10)

DECLARE cursorGD CURSOR FOR
SELECT NGAYGD, LOAIGD, SOTIEN
	FROM GD_GOIRUT INNER JOIN NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND NGAYGD >= @tungay
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN
	FROM GD_CHUYENTIEN INNER JOIN NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND NGAYGD >= @tungay
UNION ALL
SELECT NGAYGD, LOAIGD, SOTIEN
	FROM LINK0.NGANHANG.DBO.GD_GOIRUT INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND NGAYGD >= @tungay AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN
	FROM LINK0.NGANHANG.DBO.GD_CHUYENTIEN INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND NGAYGD >= @tungay AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
--ORDER BY NGAYGD DESC
OPEN cursorGD
FETCH NEXT FROM cursorGD
	INTO @ngaygd, @loaigd, @sotien
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @loaigd = 'GT'
		SET @sodudau -= @sotien
	ELSE
		SET @sodudau += @sotien

	FETCH NEXT FROM cursorGD
		INTO @ngaygd, @loaigd, @sotien
END
CLOSE cursorGD
DEALLOCATE cursorGD

CREATE TABLE #TAM (
	SODUDAU money,
	NGAYGD datetime,
	LOAIGD nvarchar(2),
	SOTIEN money,
	SODUSAU money,
	MACN nvarchar(10)
)

DECLARE cursorSaoKe CURSOR FOR
SELECT NGAYGD, LOAIGD, SOTIEN, MACN
	FROM GD_GOIRUT INNER JOIN NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN, MACN
	FROM GD_CHUYENTIEN INNER JOIN NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay)
UNION ALL
SELECT NGAYGD, LOAIGD, SOTIEN, MACN
	FROM LINK0.NGANHANG.DBO.GD_GOIRUT INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_GOIRUT.MANV = NhanVien.MANV
	WHERE SOTK = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay) AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
UNION ALL
SELECT NGAYGD, LOAIGD = 'CT', SOTIEN, MACN
	FROM LINK0.NGANHANG.DBO.GD_CHUYENTIEN INNER JOIN LINK0.NGANHANG.DBO.NhanVien ON GD_CHUYENTIEN.MANV = NhanVien.MANV
	WHERE SOTK_CHUYEN = @sotk AND (NGAYGD >= @tungay AND NGAYGD < @denngay) AND MACN <> (SELECT TOP 1 MACN FROM NhanVien)
ORDER BY NGAYGD
OPEN cursorSaoKe
FETCH NEXT FROM cursorSaoKe
	INTO @ngaygd, @loaigd, @sotien, @macn
WHILE @@FETCH_STATUS = 0
BEGIN
	IF @loaigd = 'GT'
	BEGIN
		INSERT INTO #TAM
			SELECT @sodudau, @ngaygd, @loaigd, @sotien, @sodudau + @sotien, @macn
		SET @sodudau += @sotien
	END
	ELSE
	BEGIN
		INSERT INTO #TAM
			SELECT @sodudau, @ngaygd, @loaigd, @sotien, @sodudau - @sotien, @macn
		SET @sodudau -= @sotien
	END

	FETCH NEXT FROM cursorSaoKe
		INTO @ngaygd, @loaigd, @sotien, @macn
END
CLOSE cursorSaoKe
DEALLOCATE cursorSaoKe

SELECT * FROM #TAM

GO
/****** Object:  StoredProcedure [dbo].[SP_TaoTaiKhoan]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TaoTaiKhoan]
	@LGNAME nvarchar(10),
	@PASS nvarchar(20),
	@USERNAME nvarchar(10),
	@ROLE nvarchar(20)
AS
BEGIN
DECLARE @check int = 0
	DECLARE @RET INT

	EXEC @RET = SP_ADDLOGIN @LGNAME, @PASS, 'NGANHANG'                     
	IF (@RET = 1)	--	LOGIN NAME BI TRUNG
	BEGIN
		SET @check = 1
		SELECT @check
		RETURN 1
	END

	EXEC @RET = SP_GRANTDBACCESS @LGNAME, @USERNAME
	IF (@RET = 1)	--	USER NAME BI TRUNG
	BEGIN
		EXEC SP_DROPLOGIN @LGNAME
		SET @check = 2
		SELECT @check
		RETURN 2
	END

	EXEC sp_addrolemember @ROLE, @USERNAME

	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
SELECT @check
END

GO
/****** Object:  StoredProcedure [dbo].[Xoa_Login]    Script Date: 5/17/2023 10:56:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Xoa_Login]
  @LGNAME VARCHAR(50),
  @USRNAME VARCHAR(50)
  
AS
  EXEC SP_DROPUSER @USRNAME
  EXEC SP_DROPLOGIN @LGNAME

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'‘GT’ : gởi tiền vào TK , ‘RT’ : rút tiền khỏi TK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GD_GOIRUT', @level2type=N'COLUMN',@level2name=N'LOAIGD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[19] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "PUBS"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 380
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SUBS"
            Begin Extent = 
               Top = 175
               Left = 48
               Bottom = 338
               Right = 346
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DS_PHANMANH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_DS_PHANMANH'
GO
