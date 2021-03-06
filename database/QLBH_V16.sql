USE [master]
GO
IF EXISTS (select * from sysdatabases where name='QLBH')
		drop database QLBH
GO
/****** Object:  Database [QLBH]    Script Date: 11/17/2021 9:43:51 AM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[maCaLamViec] [bit] NOT NULL,
	[tenCaLam] [nvarchar](50) NOT NULL,
	[gioBatDauCa] [time](7) NOT NULL,
	[gioKetThucCa] [time](7) NOT NULL,
 CONSTRAINT [PK_CaLamViec] PRIMARY KEY CLUSTERED 
(
	[maCaLamViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHoaDonBanHang]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBanHang](
	[maSP] [varchar](50) NOT NULL,
	[soLuongBan] [int] NOT NULL,
	[donGiaBan] [money] NOT NULL,
	[thanhTien] [money] NOT NULL,
	[maHDBH] [int] NOT NULL,
 CONSTRAINT [pk_cthdbh] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC,
	[maHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhapHang]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhapHang](
	[maSP] [varchar](50) NOT NULL,
	[soLuongNhap] [int] NOT NULL,
	[donGiaNhap] [money] NOT NULL,
	[thanhTien] [money] NOT NULL,
	[maHDNH] [int] NOT NULL,
 CONSTRAINT [pk_cthdnh] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC,
	[maHDNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[maHDBH] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVienLapHDBH] [char](8) NOT NULL,
	[maKH] [int] NOT NULL,
	[thoiGianLap] [datetime] NOT NULL,
	[tongSLSP] [int] NOT NULL,
	[thanhTienChuaThue] [money] NOT NULL,
	[thueGTGT] [money] NOT NULL,
	[tongTien] [real] NOT NULL,
	[soTienKhachDua] [money] NOT NULL,
	[soTienThoiLai] [money] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhapHang]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhapHang](
	[maHDNH] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVienLapHDNH] [char](8) NOT NULL,
	[maLoHang] [int] NOT NULL,
	[tenNguoiGiaoHang] [nvarchar](250) NOT NULL,
	[thoiGianDatHang] [datetime] NOT NULL,
	[thoiGianGiaoHang] [datetime] NOT NULL,
	[tongSLSP] [int] NOT NULL,
	[tongTien] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonNhapHang] PRIMARY KEY CLUSTERED 
(
	[maHDNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](250) NOT NULL,
	[soDT] [varchar](20) NOT NULL,
	[diaChi] [nvarchar](250) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngayThem] [datetime] NOT NULL,
 CONSTRAINT [khachhang_pk] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [char](8) NOT NULL,
	[maCaLamViec] [bit] NOT NULL,
	[hoTen] [nvarchar](250) NOT NULL,
	[soDT] [varchar](20) NOT NULL,
	[soCMND] [varchar](15) NOT NULL,
	[diaChi] [nvarchar](250) NOT NULL,
	[gioiTinh] [bit] NOT NULL,
	[ngayVaoLam] [datetime] NOT NULL,
	[capBac] [bit] NOT NULL,
	[trangThaiLamViec] [bit] NOT NULL,
	[maNguoiQuanLiThemVao] [char](8) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhatKiBanHangTheoCa]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhatKiBanHangTheoCa](
	[maNKBHTC] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVienLapNKBHTC] [char](8) NOT NULL,
	[thoiGianLap] [datetime] NOT NULL,
	[tongSLSPBanDuoc] [int] NOT NULL,
	[tongSLSPConLai] [int] NOT NULL,
	[tongSLSPMoiNhap] [int] NOT NULL,
	[tongDoanhThu] [money] NOT NULL,
 CONSTRAINT [ntkbtc_pk] PRIMARY KEY CLUSTERED 
(
	[maNKBHTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuDoiChung]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuDoiChung](
	[maPhieuDoiChung] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVienLapPhieu] [char](8) NOT NULL,
	[maNhanVienKiemPhieu] [char](8) NOT NULL,
	[thoiGianLapPhieu] [datetime] NOT NULL,
	[soTienBanDau] [money] NOT NULL,
	[soTienTrongKetHeThongTinh] [money] NOT NULL,
	[soTienNguoiGiaoCaTinh] [money] NOT NULL,
	[soTienNguoiNhanCaTinh] [money] NOT NULL,
 CONSTRAINT [PK_PhieuDoiChung] PRIMARY KEY CLUSTERED 
(
	[maPhieuDoiChung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSP] [varchar](50) NOT NULL,
	[tenSP] [nvarchar](50) NOT NULL,
	[mauSac] [nvarchar](50) NOT NULL,
	[size] [nvarchar](50) NOT NULL,
	[chatLieu] [nvarchar](50) NOT NULL,
	[donGia] [money] NOT NULL,
	[thuongHieu] [nvarchar](50) NOT NULL,
	[nguonGoc] [nvarchar](50) NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[moTa] [ntext] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/17/2021 9:43:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maNhanVien] [char](8) NOT NULL,
	[tenDangNhap] [char](8) NOT NULL,
	[matKhau] [nvarchar](50) NOT NULL,
	[trangThaiKichHoat] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CaLamViec] ([maCaLamViec], [tenCaLam], [gioBatDauCa], [gioKetThucCa]) VALUES (0, N'Ca tối', CAST(N'16:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[CaLamViec] ([maCaLamViec], [tenCaLam], [gioBatDauCa], [gioKetThucCa]) VALUES (1, N'Ca sáng', CAST(N'09:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000001', 1, 399000.0000, 399000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000001', 1, 399000.0000, 399000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000001', 1, 399000.0000, 399000.0000, 5)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000001', 1, 399000.0000, 399000.0000, 104)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000002', 1, 399000.0000, 399000.0000, 5)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000002', 1, 399000.0000, 399000.0000, 105)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000003', 3, 399000.0000, 1197000.0000, 5)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000003', 1, 399000.0000, 399000.0000, 106)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000004', 3, 399000.0000, 1197000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000004', 1, 399000.0000, 399000.0000, 6)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000004', 1, 399000.0000, 399000.0000, 107)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000005', 2, 399000.0000, 798000.0000, 6)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000005', 1, 399000.0000, 399000.0000, 108)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000006', 3, 399000.0000, 1197000.0000, 7)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000006', 1, 399000.0000, 399000.0000, 109)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000007', 1, 399000.0000, 399000.0000, 8)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000007', 1, 399000.0000, 399000.0000, 110)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000008', 2, 399000.0000, 798000.0000, 9)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000008', 1, 399000.0000, 399000.0000, 111)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000009', 1, 399000.0000, 399000.0000, 10)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000009', 1, 399000.0000, 399000.0000, 112)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000010', 4, 799000.0000, 3196000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000010', 1, 799000.0000, 799000.0000, 10)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000010', 1, 799000.0000, 799000.0000, 113)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000011', 3, 799000.0000, 2397000.0000, 11)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000011', 1, 799000.0000, 799000.0000, 114)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000012', 4, 799000.0000, 3196000.0000, 12)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000012', 1, 799000.0000, 799000.0000, 115)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000013', 5, 799000.0000, 3995000.0000, 13)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000013', 1, 799000.0000, 799000.0000, 116)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000014', 6, 799000.0000, 4794000.0000, 13)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000014', 1, 799000.0000, 799000.0000, 117)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000015', 3, 799000.0000, 2397000.0000, 14)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000015', 1, 799000.0000, 799000.0000, 118)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000016', 2, 799000.0000, 1598000.0000, 14)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000016', 1, 799000.0000, 799000.0000, 119)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000017', 1, 799000.0000, 799000.0000, 15)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000017', 1, 799000.0000, 799000.0000, 120)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000018', 5, 220000.0000, 1100000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000018', 1, 220000.0000, 220000.0000, 16)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000018', 1, 220000.0000, 220000.0000, 121)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000019', 1, 220000.0000, 220000.0000, 17)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000019', 1, 220000.0000, 220000.0000, 122)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000020', 1, 220000.0000, 220000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000020', 1, 220000.0000, 220000.0000, 17)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000020', 1, 220000.0000, 220000.0000, 123)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000021', 2, 220000.0000, 440000.0000, 17)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000021', 1, 220000.0000, 220000.0000, 124)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000022', 2, 220000.0000, 440000.0000, 18)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000022', 1, 220000.0000, 220000.0000, 125)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000023', 1, 220000.0000, 220000.0000, 19)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000023', 1, 220000.0000, 220000.0000, 126)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000024', 6, 263000.0000, 1578000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000024', 3, 263000.0000, 789000.0000, 20)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000024', 1, 263000.0000, 263000.0000, 127)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000025', 4, 263000.0000, 1052000.0000, 20)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000025', 1, 263000.0000, 263000.0000, 128)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000026', 2, 263000.0000, 526000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000026', 1, 263000.0000, 263000.0000, 21)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000026', 1, 263000.0000, 263000.0000, 129)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000027', 5, 263000.0000, 1315000.0000, 22)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000027', 1, 263000.0000, 263000.0000, 130)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000028', 3, 263000.0000, 789000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000028', 2, 263000.0000, 526000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000028', 3, 263000.0000, 789000.0000, 23)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000028', 1, 263000.0000, 263000.0000, 131)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000029', 1, 263000.0000, 263000.0000, 24)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000029', 1, 263000.0000, 263000.0000, 132)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000030', 1, 263000.0000, 263000.0000, 25)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000030', 1, 263000.0000, 263000.0000, 133)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000031', 1, 263000.0000, 263000.0000, 26)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000031', 1, 263000.0000, 263000.0000, 134)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000032', 2, 350000.0000, 700000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000032', 2, 350000.0000, 700000.0000, 27)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000032', 1, 350000.0000, 350000.0000, 135)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000033', 1, 350000.0000, 350000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000033', 1, 350000.0000, 350000.0000, 28)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000033', 1, 350000.0000, 350000.0000, 136)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000034', 2, 350000.0000, 700000.0000, 29)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000034', 1, 350000.0000, 350000.0000, 137)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000035', 3, 350000.0000, 1050000.0000, 30)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000035', 1, 350000.0000, 350000.0000, 138)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000036', 1, 350000.0000, 350000.0000, 31)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000036', 1, 350000.0000, 350000.0000, 139)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000037', 3, 350000.0000, 1050000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000037', 1, 350000.0000, 350000.0000, 32)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000037', 1, 350000.0000, 350000.0000, 140)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000038', 1, 350000.0000, 350000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000038', 2, 350000.0000, 700000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000038', 1, 350000.0000, 350000.0000, 33)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000038', 1, 350000.0000, 350000.0000, 141)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000039', 2, 350000.0000, 700000.0000, 33)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000039', 1, 350000.0000, 350000.0000, 142)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000040', 1, 350000.0000, 350000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000040', 1, 350000.0000, 350000.0000, 34)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000040', 1, 350000.0000, 350000.0000, 143)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000041', 1, 350000.0000, 350000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000041', 1, 350000.0000, 350000.0000, 34)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000041', 1, 350000.0000, 350000.0000, 144)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000042', 1, 350000.0000, 350000.0000, 35)
GO
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000042', 1, 350000.0000, 350000.0000, 145)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000043', 1, 400000.0000, 400000.0000, 35)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000043', 1, 400000.0000, 400000.0000, 146)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000044', 3, 400000.0000, 1200000.0000, 36)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000044', 1, 400000.0000, 400000.0000, 147)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000045', 1, 400000.0000, 400000.0000, 37)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000045', 1, 400000.0000, 400000.0000, 148)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000046', 2, 395000.0000, 790000.0000, 38)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000046', 1, 395000.0000, 395000.0000, 149)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000047', 2, 395000.0000, 790000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000047', 3, 395000.0000, 1185000.0000, 38)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000047', 1, 395000.0000, 395000.0000, 150)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000048', 1, 395000.0000, 395000.0000, 39)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000048', 1, 395000.0000, 395000.0000, 151)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000049', 2, 395000.0000, 790000.0000, 40)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000049', 1, 395000.0000, 395000.0000, 152)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000050', 3, 395000.0000, 1185000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000050', 1, 395000.0000, 395000.0000, 41)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000050', 1, 395000.0000, 395000.0000, 153)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000051', 1, 395000.0000, 395000.0000, 41)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000051', 1, 395000.0000, 395000.0000, 154)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000052', 3, 395000.0000, 1185000.0000, 41)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000052', 1, 395000.0000, 395000.0000, 155)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000053', 4, 395000.0000, 1580000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000053', 4, 395000.0000, 1580000.0000, 41)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000053', 1, 395000.0000, 395000.0000, 156)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000054', 1, 395000.0000, 395000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000054', 1, 395000.0000, 395000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000054', 5, 395000.0000, 1975000.0000, 41)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000054', 1, 395000.0000, 395000.0000, 157)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000055', 1, 395000.0000, 395000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000055', 6, 395000.0000, 2370000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000055', 1, 395000.0000, 395000.0000, 158)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000056', 3, 395000.0000, 1185000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000056', 1, 395000.0000, 395000.0000, 159)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000057', 5, 395000.0000, 1975000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000057', 2, 395000.0000, 790000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000057', 1, 395000.0000, 395000.0000, 160)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000058', 1, 750000.0000, 750000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000058', 1, 750000.0000, 750000.0000, 161)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000059', 1, 750000.0000, 750000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000059', 3, 750000.0000, 2250000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000059', 1, 750000.0000, 750000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000059', 1, 750000.0000, 750000.0000, 162)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000060', 1, 750000.0000, 750000.0000, 42)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000060', 1, 750000.0000, 750000.0000, 163)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000061', 1, 290000.0000, 290000.0000, 43)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000061', 1, 290000.0000, 290000.0000, 164)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000062', 2, 290000.0000, 580000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000062', 1, 290000.0000, 290000.0000, 165)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000063', 2, 290000.0000, 580000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000063', 1, 290000.0000, 290000.0000, 166)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000064', 1, 290000.0000, 290000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000064', 1, 290000.0000, 290000.0000, 167)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000065', 3, 290000.0000, 870000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000065', 1, 290000.0000, 290000.0000, 168)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000066', 4, 290000.0000, 1160000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000066', 1, 290000.0000, 290000.0000, 169)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000067', 1, 290000.0000, 290000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000067', 1, 290000.0000, 290000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000067', 1, 290000.0000, 290000.0000, 170)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000068', 1, 290000.0000, 290000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000068', 5, 290000.0000, 1450000.0000, 44)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000068', 1, 290000.0000, 290000.0000, 171)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000069', 3, 180000.0000, 540000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000069', 3, 180000.0000, 540000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000069', 1, 180000.0000, 180000.0000, 172)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000070', 1, 180000.0000, 180000.0000, 3)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000070', 1, 180000.0000, 180000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000070', 1, 180000.0000, 180000.0000, 173)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000071', 1, 180000.0000, 180000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000071', 1, 180000.0000, 180000.0000, 174)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000072', 1, 180000.0000, 180000.0000, 2)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000072', 1, 180000.0000, 180000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000072', 1, 180000.0000, 180000.0000, 175)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000073', 2, 180000.0000, 360000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000073', 1, 180000.0000, 180000.0000, 176)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000074', 1, 250000.0000, 250000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000074', 1, 250000.0000, 250000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000074', 1, 250000.0000, 250000.0000, 177)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000075', 2, 250000.0000, 500000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000075', 1, 250000.0000, 250000.0000, 178)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000076', 3, 250000.0000, 750000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000076', 1, 250000.0000, 250000.0000, 179)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000077', 1, 250000.0000, 250000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000077', 1, 250000.0000, 250000.0000, 180)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000078', 1, 480000.0000, 480000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000078', 1, 480000.0000, 480000.0000, 181)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000079', 1, 480000.0000, 480000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000079', 1, 480000.0000, 480000.0000, 45)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000079', 1, 480000.0000, 480000.0000, 182)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000080', 2, 480000.0000, 960000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000080', 1, 480000.0000, 480000.0000, 183)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000081', 1, 480000.0000, 480000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000081', 1, 480000.0000, 480000.0000, 184)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000082', 1, 289000.0000, 289000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000082', 1, 289000.0000, 289000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000082', 1, 289000.0000, 289000.0000, 185)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000083', 1, 289000.0000, 289000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000083', 1, 289000.0000, 289000.0000, 186)
GO
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000084', 1, 289000.0000, 289000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000084', 1, 289000.0000, 289000.0000, 187)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000085', 1, 499000.0000, 499000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000085', 3, 499000.0000, 1497000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000085', 1, 499000.0000, 499000.0000, 188)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000086', 1, 499000.0000, 499000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000086', 1, 499000.0000, 499000.0000, 189)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000087', 2, 499000.0000, 998000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000087', 1, 499000.0000, 499000.0000, 190)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000088', 1, 499000.0000, 499000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000088', 3, 499000.0000, 1497000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000088', 1, 499000.0000, 499000.0000, 191)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000089', 2, 499000.0000, 998000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000089', 1, 499000.0000, 499000.0000, 46)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000089', 1, 499000.0000, 499000.0000, 192)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000090', 2, 499000.0000, 998000.0000, 4)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000090', 2, 499000.0000, 998000.0000, 47)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000090', 1, 499000.0000, 499000.0000, 193)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000091', 1, 499000.0000, 499000.0000, 47)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000091', 1, 499000.0000, 499000.0000, 194)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000092', 1, 499000.0000, 499000.0000, 48)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000092', 1, 499000.0000, 499000.0000, 195)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000093', 3, 499000.0000, 1497000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000093', 1, 499000.0000, 499000.0000, 196)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000093', 1, 499000.0000, 499000.0000, 201)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000094', 4, 699000.0000, 2796000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000094', 1, 699000.0000, 699000.0000, 197)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000094', 1, 699000.0000, 699000.0000, 202)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000095', 5, 699000.0000, 3495000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000095', 1, 699000.0000, 699000.0000, 198)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000095', 1, 699000.0000, 699000.0000, 203)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000096', 6, 699000.0000, 4194000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000096', 1, 699000.0000, 699000.0000, 199)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000096', 1, 699000.0000, 699000.0000, 204)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000097', 3, 699000.0000, 2097000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000097', 3, 699000.0000, 2097000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000097', 1, 699000.0000, 699000.0000, 200)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000097', 1, 699000.0000, 699000.0000, 205)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000098', 2, 699000.0000, 1398000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000099', 1, 699000.0000, 699000.0000, 49)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000100', 1, 699000.0000, 699000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000101', 1, 699000.0000, 699000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000102', 1, 699000.0000, 699000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000103', 2, 359000.0000, 718000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000104', 2, 359000.0000, 718000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000105', 1, 359000.0000, 359000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000106', 3, 359000.0000, 1077000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000107', 4, 359000.0000, 1436000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000108', 1, 359000.0000, 359000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000109', 5, 359000.0000, 1795000.0000, 50)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000140', 2, 499000.0000, 998000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000147', 1, 599000.0000, 599000.0000, 1)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000148', 1, 1672000.0000, 1672000.0000, 51)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000149', 1, 1672000.0000, 1672000.0000, 52)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000150', 1, 1672000.0000, 1672000.0000, 53)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000151', 1, 1672000.0000, 1672000.0000, 54)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000152', 1, 1752000.0000, 1752000.0000, 55)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000153', 1, 1752000.0000, 1752000.0000, 56)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000154', 1, 1752000.0000, 1752000.0000, 57)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000155', 1, 1752000.0000, 1752000.0000, 58)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000156', 1, 2790000.0000, 2790000.0000, 59)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000157', 1, 2790000.0000, 2790000.0000, 60)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000158', 1, 2790000.0000, 2790000.0000, 61)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000159', 1, 2790000.0000, 2790000.0000, 62)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000160', 1, 2790000.0000, 2790000.0000, 63)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000161', 1, 2790000.0000, 2790000.0000, 64)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000162', 1, 2790000.0000, 2790000.0000, 65)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000163', 1, 2790000.0000, 2790000.0000, 66)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000164', 1, 2790000.0000, 2790000.0000, 67)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000165', 1, 2790000.0000, 2790000.0000, 68)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000166', 1, 2790000.0000, 2790000.0000, 69)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000167', 1, 2790000.0000, 2790000.0000, 70)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000168', 1, 2790000.0000, 2790000.0000, 71)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000169', 1, 2790000.0000, 2790000.0000, 72)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000170', 1, 2790000.0000, 2790000.0000, 73)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000171', 1, 2790000.0000, 2790000.0000, 74)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000172', 1, 2790000.0000, 2790000.0000, 75)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000173', 1, 2790000.0000, 2790000.0000, 76)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000174', 1, 2790000.0000, 2790000.0000, 77)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000175', 1, 2790000.0000, 2790000.0000, 78)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000176', 1, 2790000.0000, 2790000.0000, 79)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000177', 1, 2790000.0000, 2790000.0000, 80)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000178', 1, 2790000.0000, 2790000.0000, 81)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000179', 1, 2790000.0000, 2790000.0000, 82)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000180', 1, 6392000.0000, 6392000.0000, 83)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000181', 1, 6392000.0000, 6392000.0000, 84)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000182', 1, 6392000.0000, 6392000.0000, 85)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000183', 1, 6392000.0000, 6392000.0000, 86)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000184', 1, 5992000.0000, 5992000.0000, 87)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000185', 1, 5992000.0000, 5992000.0000, 88)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000186', 1, 5992000.0000, 5992000.0000, 89)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000187', 1, 5992000.0000, 5992000.0000, 90)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000188', 1, 5992000.0000, 5992000.0000, 91)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000189', 1, 5992000.0000, 5992000.0000, 92)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000190', 1, 5992000.0000, 5992000.0000, 93)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000191', 1, 5992000.0000, 5992000.0000, 94)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000192', 1, 5832000.0000, 5832000.0000, 95)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000193', 1, 5832000.0000, 5832000.0000, 96)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000194', 1, 5832000.0000, 5832000.0000, 97)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000195', 1, 5832000.0000, 5832000.0000, 98)
GO
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000196', 1, 18000000.0000, 18000000.0000, 99)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000197', 1, 18000000.0000, 18000000.0000, 100)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000198', 1, 18000000.0000, 18000000.0000, 101)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000199', 1, 7900000.0000, 7900000.0000, 102)
INSERT [dbo].[ChiTietHoaDonBanHang] ([maSP], [soLuongBan], [donGiaBan], [thanhTien], [maHDBH]) VALUES (N'SP0000200', 1, 7900000.0000, 7900000.0000, 103)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000001', 15, 399000.0000, 5985000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000001', 5, 399000.0000, 1995000.0000, 32)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000002', 20, 399000.0000, 7980000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000002', 5, 399000.0000, 1995000.0000, 32)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000003', 20, 399000.0000, 7980000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000003', 5, 399000.0000, 1995000.0000, 32)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000004', 30, 399000.0000, 11970000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000004', 5, 399000.0000, 1995000.0000, 33)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000005', 30, 399000.0000, 11970000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000005', 5, 399000.0000, 1995000.0000, 33)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000006', 15, 399000.0000, 5985000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000006', 5, 399000.0000, 1995000.0000, 33)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000007', 20, 399000.0000, 7980000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000007', 5, 399000.0000, 1995000.0000, 34)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000008', 20, 399000.0000, 7980000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000008', 5, 399000.0000, 1995000.0000, 34)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000009', 30, 399000.0000, 11970000.0000, 1)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000009', 5, 399000.0000, 1995000.0000, 34)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000010', 30, 799000.0000, 23970000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000010', 5, 799000.0000, 3995000.0000, 35)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000011', 15, 799000.0000, 11985000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000011', 5, 799000.0000, 3995000.0000, 35)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000012', 20, 799000.0000, 15980000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000012', 5, 799000.0000, 3995000.0000, 36)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000013', 20, 799000.0000, 15980000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000013', 5, 799000.0000, 3995000.0000, 36)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000014', 30, 799000.0000, 23970000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000014', 5, 799000.0000, 3995000.0000, 37)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000015', 30, 799000.0000, 23970000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000015', 5, 799000.0000, 3995000.0000, 37)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000016', 15, 799000.0000, 11985000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000016', 5, 799000.0000, 3995000.0000, 37)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000017', 20, 799000.0000, 15980000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000017', 5, 799000.0000, 3995000.0000, 37)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000018', 20, 220000.0000, 4400000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000018', 15, 220000.0000, 3300000.0000, 38)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000019', 30, 220000.0000, 6600000.0000, 2)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000019', 15, 220000.0000, 3300000.0000, 38)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000020', 30, 220000.0000, 6600000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000020', 15, 220000.0000, 3300000.0000, 38)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000021', 15, 220000.0000, 3300000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000021', 15, 220000.0000, 3300000.0000, 38)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000022', 20, 220000.0000, 4400000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000022', 15, 220000.0000, 3300000.0000, 39)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000023', 20, 220000.0000, 4400000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000023', 15, 220000.0000, 3300000.0000, 39)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000024', 30, 263000.0000, 7890000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000024', 15, 263000.0000, 3945000.0000, 39)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000025', 30, 263000.0000, 7890000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000025', 15, 263000.0000, 3945000.0000, 39)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000026', 15, 263000.0000, 3945000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000026', 15, 263000.0000, 3945000.0000, 40)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000027', 20, 263000.0000, 5260000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000027', 15, 263000.0000, 3945000.0000, 40)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000028', 20, 263000.0000, 5260000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000028', 15, 263000.0000, 3945000.0000, 40)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000029', 30, 263000.0000, 7890000.0000, 3)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000029', 15, 263000.0000, 3945000.0000, 40)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000030', 30, 263000.0000, 7890000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000031', 15, 263000.0000, 3945000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000032', 20, 350000.0000, 7000000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000033', 20, 350000.0000, 7000000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000034', 30, 350000.0000, 10500000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000035', 30, 350000.0000, 10500000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000036', 15, 350000.0000, 5250000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000037', 20, 350000.0000, 7000000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000038', 20, 350000.0000, 7000000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000039', 30, 350000.0000, 10500000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000040', 30, 350000.0000, 10500000.0000, 4)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000041', 15, 350000.0000, 5250000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000042', 20, 350000.0000, 7000000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000043', 20, 400000.0000, 8000000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000044', 30, 400000.0000, 12000000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000045', 30, 400000.0000, 12000000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000046', 15, 395000.0000, 5925000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000047', 20, 395000.0000, 7900000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000048', 20, 395000.0000, 7900000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000049', 30, 395000.0000, 11850000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000050', 30, 395000.0000, 11850000.0000, 5)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000051', 15, 395000.0000, 5925000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000052', 20, 395000.0000, 7900000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000053', 20, 395000.0000, 7900000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000054', 30, 395000.0000, 11850000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000055', 30, 395000.0000, 11850000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000056', 15, 395000.0000, 5925000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000057', 20, 395000.0000, 7900000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000058', 20, 750000.0000, 15000000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000059', 30, 750000.0000, 22500000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000060', 30, 750000.0000, 22500000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000061', 15, 290000.0000, 4350000.0000, 6)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000062', 20, 290000.0000, 5800000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000063', 20, 290000.0000, 5800000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000064', 30, 290000.0000, 8700000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000065', 30, 290000.0000, 8700000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000066', 15, 290000.0000, 4350000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000067', 20, 290000.0000, 5800000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000068', 20, 290000.0000, 5800000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000069', 30, 180000.0000, 5400000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000070', 30, 180000.0000, 5400000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000071', 15, 180000.0000, 2700000.0000, 7)
GO
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000072', 20, 180000.0000, 3600000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000073', 20, 180000.0000, 3600000.0000, 7)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000074', 30, 250000.0000, 7500000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000075', 30, 250000.0000, 7500000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000076', 15, 250000.0000, 3750000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000077', 20, 250000.0000, 5000000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000078', 20, 480000.0000, 9600000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000079', 30, 480000.0000, 14400000.0000, 8)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000080', 30, 480000.0000, 14400000.0000, 9)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000081', 15, 480000.0000, 7200000.0000, 9)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000082', 20, 289000.0000, 5780000.0000, 9)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000083', 20, 289000.0000, 5780000.0000, 9)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000084', 30, 289000.0000, 8670000.0000, 9)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000085', 30, 499000.0000, 14970000.0000, 10)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000086', 15, 499000.0000, 7485000.0000, 10)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000087', 20, 499000.0000, 9980000.0000, 10)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000088', 20, 499000.0000, 9980000.0000, 11)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000089', 30, 499000.0000, 14970000.0000, 11)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000090', 30, 499000.0000, 14970000.0000, 11)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000091', 15, 499000.0000, 7485000.0000, 11)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000092', 20, 499000.0000, 9980000.0000, 11)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000093', 20, 499000.0000, 9980000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000094', 30, 699000.0000, 20970000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000095', 30, 699000.0000, 20970000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000096', 15, 699000.0000, 10485000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000097', 20, 699000.0000, 13980000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000098', 20, 699000.0000, 13980000.0000, 12)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000099', 30, 699000.0000, 20970000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000100', 30, 699000.0000, 20970000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000101', 15, 699000.0000, 10485000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000102', 20, 699000.0000, 13980000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000103', 20, 359000.0000, 7180000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000104', 30, 359000.0000, 10770000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000105', 30, 359000.0000, 10770000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000106', 15, 359000.0000, 5385000.0000, 13)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000107', 20, 359000.0000, 7180000.0000, 14)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000108', 20, 359000.0000, 7180000.0000, 14)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000109', 30, 359000.0000, 10770000.0000, 14)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000110', 30, 359000.0000, 10770000.0000, 14)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000111', 15, 359000.0000, 5385000.0000, 15)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000112', 20, 369000.0000, 7380000.0000, 15)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000113', 20, 369000.0000, 7380000.0000, 15)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000114', 30, 369000.0000, 11070000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000115', 30, 369000.0000, 11070000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000116', 20, 369000.0000, 7380000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000116', 20, 369000.0000, 7380000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000117', 30, 369000.0000, 11070000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000117', 20, 369000.0000, 7380000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000118', 30, 369000.0000, 11070000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000118', 30, 369000.0000, 11070000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000119', 15, 369000.0000, 5535000.0000, 16)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000120', 20, 369000.0000, 7380000.0000, 17)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000121', 20, 459000.0000, 9180000.0000, 17)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000122', 30, 459000.0000, 13770000.0000, 17)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000123', 30, 459000.0000, 13770000.0000, 17)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000124', 15, 459000.0000, 6885000.0000, 17)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000125', 20, 459000.0000, 9180000.0000, 18)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000126', 20, 459000.0000, 9180000.0000, 18)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000127', 30, 459000.0000, 13770000.0000, 18)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000128', 30, 459000.0000, 13770000.0000, 18)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000129', 15, 459000.0000, 6885000.0000, 18)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000130', 20, 499000.0000, 9980000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000131', 20, 499000.0000, 9980000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000132', 30, 499000.0000, 14970000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000133', 30, 499000.0000, 14970000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000134', 20, 499000.0000, 9980000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000135', 30, 499000.0000, 14970000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000136', 30, 499000.0000, 14970000.0000, 19)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000137', 15, 499000.0000, 7485000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000138', 20, 499000.0000, 9980000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000139', 20, 499000.0000, 9980000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000140', 30, 499000.0000, 14970000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000141', 30, 499000.0000, 14970000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000142', 15, 599000.0000, 8985000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000143', 20, 599000.0000, 11980000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000144', 20, 599000.0000, 11980000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000145', 30, 599000.0000, 17970000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000146', 30, 599000.0000, 17970000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000147', 15, 599000.0000, 8985000.0000, 20)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000148', 5, 1672000.0000, 8360000.0000, 21)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000149', 5, 1672000.0000, 8360000.0000, 21)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000150', 5, 1672000.0000, 8360000.0000, 21)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000151', 5, 1672000.0000, 8360000.0000, 27)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000152', 5, 1752000.0000, 8760000.0000, 27)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000153', 3, 1752000.0000, 5256000.0000, 28)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000154', 3, 1752000.0000, 5256000.0000, 28)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000155', 4, 1752000.0000, 7008000.0000, 28)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000156', 3, 2790000.0000, 8370000.0000, 29)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000157', 3, 2790000.0000, 8370000.0000, 29)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000158', 1, 2790000.0000, 2790000.0000, 29)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000159', 3, 2790000.0000, 8370000.0000, 30)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000160', 3, 2790000.0000, 8370000.0000, 30)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000161', 1, 2790000.0000, 2790000.0000, 30)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000162', 1, 2790000.0000, 2790000.0000, 31)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000163', 3, 2790000.0000, 8370000.0000, 31)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000164', 3, 2790000.0000, 8370000.0000, 31)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000196', 2, 18000000.0000, 36000000.0000, 22)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000197', 2, 18000000.0000, 36000000.0000, 23)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000198', 2, 18000000.0000, 36000000.0000, 24)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000199', 5, 7900000.0000, 39500000.0000, 25)
GO
INSERT [dbo].[ChiTietHoaDonNhapHang] ([maSP], [soLuongNhap], [donGiaNhap], [thanhTien], [maHDNH]) VALUES (N'SP0000200', 5, 7900000.0000, 39500000.0000, 26)
SET IDENTITY_INSERT [dbo].[HoaDonBanHang] ON 

INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (1, N'21100020', 1, CAST(N'2019-01-01 00:00:00.000' AS DateTime), 15, 6411000.0000, 641100.0000, 7052100, 7100000.0000, 47900.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (2, N'21100030', 2, CAST(N'2019-01-02 00:00:00.000' AS DateTime), 27, 10239000.0000, 1023900.0000, 1.12629E+07, 12000000.0000, 737100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (3, N'21100040', 3, CAST(N'2019-01-03 00:00:00.000' AS DateTime), 24, 9342000.0000, 934200.0000, 1.02762E+07, 10500000.0000, 223800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (4, N'21100050', 4, CAST(N'2019-01-04 00:00:00.000' AS DateTime), 16, 6690000.0000, 669000.0000, 7359000, 7400000.0000, 41000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (5, N'21100050', 5, CAST(N'2019-01-05 00:00:00.000' AS DateTime), 5, 1995000.0000, 199500.0000, 2194500, 2200000.0000, 5500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (6, N'21100050', 6, CAST(N'2019-07-27 00:00:00.000' AS DateTime), 3, 1197000.0000, 119700.0000, 1316700, 1350000.0000, 33300.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (7, N'21100050', 7, CAST(N'2019-07-28 00:00:00.000' AS DateTime), 3, 1197000.0000, 119700.0000, 1316700, 1350000.0000, 33300.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (8, N'21100070', 8, CAST(N'2019-07-29 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 450000.0000, 11100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (9, N'21100080', 9, CAST(N'2019-08-08 00:00:00.000' AS DateTime), 2, 798000.0000, 79800.0000, 877800, 880000.0000, 2200.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (10, N'21100090', 10, CAST(N'2019-10-29 00:00:00.000' AS DateTime), 2, 1198000.0000, 119800.0000, 1317800, 1400000.0000, 82200.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (11, N'21100100', 11, CAST(N'2019-10-30 00:00:00.000' AS DateTime), 3, 2397000.0000, 239700.0000, 2636700, 2650000.0000, 13300.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (12, N'21100020', 12, CAST(N'2019-10-31 00:00:00.000' AS DateTime), 4, 3196000.0000, 319600.0000, 3515600, 3600000.0000, 84400.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (13, N'21100030', 13, CAST(N'2019-11-01 00:00:00.000' AS DateTime), 11, 8789000.0000, 878900.0000, 9667900, 9700000.0000, 32100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (14, N'21100040', 14, CAST(N'2019-11-02 00:00:00.000' AS DateTime), 5, 3995000.0000, 399500.0000, 4394500, 4400000.0000, 5500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (15, N'21100050', 15, CAST(N'2019-11-03 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 880000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (16, N'21100050', 16, CAST(N'2019-11-04 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 242000.0000, 0.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (17, N'21100050', 17, CAST(N'2019-11-05 00:00:00.000' AS DateTime), 4, 880000.0000, 88000.0000, 968000, 970000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (18, N'21100050', 18, CAST(N'2019-11-06 00:00:00.000' AS DateTime), 2, 440000.0000, 44000.0000, 484000, 500000.0000, 16000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (19, N'21100070', 19, CAST(N'2019-11-07 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 250000.0000, 8000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (20, N'21100080', 20, CAST(N'2019-11-08 00:00:00.000' AS DateTime), 7, 1841000.0000, 184100.0000, 2025100, 2100000.0000, 74900.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (21, N'21100090', 21, CAST(N'2019-11-09 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (22, N'21100100', 22, CAST(N'2019-11-10 00:00:00.000' AS DateTime), 5, 1315000.0000, 131500.0000, 1446500, 1500000.0000, 53500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (23, N'21100020', 23, CAST(N'2019-11-11 00:00:00.000' AS DateTime), 3, 789000.0000, 78900.0000, 867900, 870000.0000, 2100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (24, N'21100030', 24, CAST(N'2019-11-12 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (25, N'21100040', 25, CAST(N'2019-11-13 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (26, N'21100050', 26, CAST(N'2019-11-14 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (27, N'21100050', 27, CAST(N'2019-11-15 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (28, N'21100050', 28, CAST(N'2019-11-16 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (29, N'21100050', 29, CAST(N'2019-11-17 00:00:00.000' AS DateTime), 2, 700000.0000, 70000.0000, 770000, 800000.0000, 30000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (30, N'21100070', 30, CAST(N'2019-11-18 00:00:00.000' AS DateTime), 3, 1050000.0000, 105000.0000, 1155000, 1200000.0000, 45000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (31, N'21100080', 31, CAST(N'2019-11-19 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (32, N'21100090', 32, CAST(N'2019-11-20 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (33, N'21100100', 33, CAST(N'2019-11-21 00:00:00.000' AS DateTime), 3, 1050000.0000, 105000.0000, 1155000, 1200000.0000, 45000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (34, N'21100020', 34, CAST(N'2019-11-22 00:00:00.000' AS DateTime), 2, 700000.0000, 70000.0000, 770000, 770000.0000, 0.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (35, N'21100030', 35, CAST(N'2019-11-23 00:00:00.000' AS DateTime), 2, 750000.0000, 75000.0000, 825000, 830000.0000, 5000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (36, N'21100040', 36, CAST(N'2019-11-24 00:00:00.000' AS DateTime), 3, 1200000.0000, 120000.0000, 1320000, 1350000.0000, 30000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (37, N'21100050', 37, CAST(N'2019-11-25 00:00:00.000' AS DateTime), 1, 400000.0000, 40000.0000, 440000, 440000.0000, 0.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (38, N'21100050', 38, CAST(N'2019-11-26 00:00:00.000' AS DateTime), 5, 1975000.0000, 197500.0000, 2172500, 2200000.0000, 27500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (39, N'21100050', 39, CAST(N'2019-11-27 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (40, N'21100050', 40, CAST(N'2019-11-28 00:00:00.000' AS DateTime), 2, 790000.0000, 79000.0000, 869000, 1000000.0000, 131000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (41, N'21100070', 41, CAST(N'2019-11-29 00:00:00.000' AS DateTime), 14, 5530000.0000, 553000.0000, 6083000, 6100000.0000, 17000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (42, N'21100080', 42, CAST(N'2019-11-30 00:00:00.000' AS DateTime), 14, 6595000.0000, 659500.0000, 7254500, 7300000.0000, 45500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (43, N'21100090', 43, CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 320000.0000, 1000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (44, N'21100100', 44, CAST(N'2019-12-02 00:00:00.000' AS DateTime), 18, 5220000.0000, 522000.0000, 5742000, 5800000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (45, N'21100050', 45, CAST(N'2019-12-03 00:00:00.000' AS DateTime), 17, 4150000.0000, 415000.0000, 4565000, 4600000.0000, 35000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (46, N'21100070', 46, CAST(N'2019-12-04 00:00:00.000' AS DateTime), 16, 7297000.0000, 729700.0000, 8026700, 8100000.0000, 73300.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (47, N'21100080', 47, CAST(N'2020-01-01 00:00:00.000' AS DateTime), 3, 1497000.0000, 149700.0000, 1646700, 1700000.0000, 53300.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (48, N'21100090', 48, CAST(N'2020-02-01 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (49, N'21100100', 49, CAST(N'2020-02-02 00:00:00.000' AS DateTime), 24, 16176000.0000, 1617600.0000, 1.77936E+07, 18000000.0000, 206400.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (50, N'21100100', 50, CAST(N'2020-02-03 00:00:00.000' AS DateTime), 21, 8559000.0000, 855900.0000, 9414900, 10000000.0000, 585100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (51, N'21100020', 51, CAST(N'2020-02-04 00:00:00.000' AS DateTime), 1, 1672000.0000, 167200.0000, 1839200, 2000000.0000, 160800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (52, N'21100030', 52, CAST(N'2020-02-05 00:00:00.000' AS DateTime), 1, 1672000.0000, 167200.0000, 1839200, 2000000.0000, 160800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (53, N'21100040', 53, CAST(N'2020-02-06 00:00:00.000' AS DateTime), 1, 1672000.0000, 167200.0000, 1839200, 2000000.0000, 160800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (54, N'21100050', 54, CAST(N'2020-02-07 00:00:00.000' AS DateTime), 1, 1672000.0000, 167200.0000, 1839200, 2000000.0000, 160800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (55, N'21100050', 55, CAST(N'2020-02-08 00:00:00.000' AS DateTime), 1, 1752000.0000, 175200.0000, 1927200, 2000000.0000, 72800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (56, N'21100050', 56, CAST(N'2020-02-09 00:00:00.000' AS DateTime), 1, 1752000.0000, 175200.0000, 1927200, 2000000.0000, 72800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (57, N'21100050', 57, CAST(N'2020-02-10 00:00:00.000' AS DateTime), 1, 1752000.0000, 175200.0000, 1927200, 2000000.0000, 72800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (58, N'21100070', 58, CAST(N'2020-02-11 00:00:00.000' AS DateTime), 1, 1752000.0000, 175200.0000, 1927200, 2000000.0000, 72800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (59, N'21100080', 59, CAST(N'2020-02-12 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (60, N'21100090', 60, CAST(N'2020-02-13 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (61, N'21100100', 61, CAST(N'2020-02-14 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (62, N'21100020', 62, CAST(N'2020-02-15 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (63, N'21100030', 63, CAST(N'2020-02-16 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (64, N'21100040', 64, CAST(N'2020-02-17 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (65, N'21100050', 65, CAST(N'2020-02-18 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (66, N'21100050', 66, CAST(N'2020-03-18 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (67, N'21100050', 67, CAST(N'2020-03-19 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (68, N'21100050', 68, CAST(N'2020-03-20 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (69, N'21100070', 69, CAST(N'2020-03-21 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (70, N'21100080', 70, CAST(N'2020-03-22 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (71, N'21100090', 71, CAST(N'2020-03-23 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (72, N'21100100', 72, CAST(N'2020-03-24 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (73, N'21100020', 73, CAST(N'2020-03-25 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (74, N'21100030', 74, CAST(N'2020-03-26 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (75, N'21100040', 75, CAST(N'2020-03-27 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (76, N'21100050', 76, CAST(N'2020-03-28 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (77, N'21100050', 77, CAST(N'2020-03-29 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (78, N'21100050', 78, CAST(N'2020-03-30 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (79, N'21100050', 79, CAST(N'2020-03-31 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (80, N'21100070', 80, CAST(N'2020-04-01 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (81, N'21100080', 81, CAST(N'2020-04-02 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (82, N'21100090', 82, CAST(N'2020-06-04 00:00:00.000' AS DateTime), 1, 2790000.0000, 279000.0000, 3069000, 3100000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (83, N'21100100', 83, CAST(N'2020-06-05 00:00:00.000' AS DateTime), 1, 6392000.0000, 639200.0000, 7031200, 7050000.0000, 18800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (84, N'21100020', 84, CAST(N'2020-08-06 00:00:00.000' AS DateTime), 1, 6392000.0000, 639200.0000, 7031200, 7050000.0000, 18800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (85, N'21100030', 85, CAST(N'2020-10-07 00:00:00.000' AS DateTime), 1, 6392000.0000, 639200.0000, 7031200, 7050000.0000, 18800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (86, N'21100040', 86, CAST(N'2020-10-08 00:00:00.000' AS DateTime), 1, 6392000.0000, 639200.0000, 7031200, 7050000.0000, 18800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (87, N'21100050', 87, CAST(N'2020-10-09 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (88, N'21100050', 88, CAST(N'2020-10-10 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (89, N'21100050', 89, CAST(N'2020-10-11 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (90, N'21100050', 90, CAST(N'2020-10-12 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (91, N'21100070', 91, CAST(N'2020-10-13 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (92, N'21100080', 92, CAST(N'2020-10-14 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (93, N'21100090', 93, CAST(N'2020-10-15 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (94, N'21100100', 94, CAST(N'2020-10-16 00:00:00.000' AS DateTime), 1, 5992000.0000, 599200.0000, 6591200, 7050000.0000, 458800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (95, N'21100050', 95, CAST(N'2020-10-17 00:00:00.000' AS DateTime), 1, 5832000.0000, 583200.0000, 6415200, 7050000.0000, 634800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (96, N'21100070', 96, CAST(N'2020-10-18 00:00:00.000' AS DateTime), 1, 5832000.0000, 583200.0000, 6415200, 7050000.0000, 634800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (97, N'21100080', 97, CAST(N'2020-12-08 00:00:00.000' AS DateTime), 1, 5832000.0000, 583200.0000, 6415200, 7050000.0000, 634800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (98, N'21100090', 98, CAST(N'2020-12-09 00:00:00.000' AS DateTime), 1, 5832000.0000, 583200.0000, 6415200, 7050000.0000, 634800.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (99, N'21100100', 99, CAST(N'2020-12-10 00:00:00.000' AS DateTime), 1, 18000000.0000, 1800000.0000, 1.98E+07, 20000000.0000, 200000.0000)
GO
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (100, N'21100100', 100, CAST(N'2020-12-11 00:00:00.000' AS DateTime), 1, 18000000.0000, 1800000.0000, 1.98E+07, 20000000.0000, 200000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (101, N'21100020', 101, CAST(N'2020-12-12 00:00:00.000' AS DateTime), 1, 18000000.0000, 1800000.0000, 1.98E+07, 20000000.0000, 200000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (102, N'21100030', 102, CAST(N'2020-12-13 00:00:00.000' AS DateTime), 1, 7900000.0000, 790000.0000, 8690000, 9000000.0000, 310000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (103, N'21100040', 103, CAST(N'2020-12-14 00:00:00.000' AS DateTime), 1, 7900000.0000, 790000.0000, 8690000, 9000000.0000, 310000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (104, N'21100050', 104, CAST(N'2020-12-15 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (105, N'21100050', 105, CAST(N'2020-12-16 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (106, N'21100050', 106, CAST(N'2020-12-17 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (107, N'21100050', 107, CAST(N'2020-12-18 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (108, N'21100070', 108, CAST(N'2020-12-19 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (109, N'21100080', 109, CAST(N'2020-12-20 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (110, N'21100090', 110, CAST(N'2020-12-21 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (111, N'21100100', 111, CAST(N'2020-12-22 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (112, N'21100020', 112, CAST(N'2020-12-23 00:00:00.000' AS DateTime), 1, 399000.0000, 39900.0000, 438900, 500000.0000, 61100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (113, N'21100030', 113, CAST(N'2020-12-24 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (114, N'21100040', 114, CAST(N'2020-12-25 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (115, N'21100050', 115, CAST(N'2020-12-26 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (116, N'21100050', 116, CAST(N'2020-12-27 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (117, N'21100050', 117, CAST(N'2020-12-28 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (118, N'21100050', 118, CAST(N'2020-12-29 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (119, N'21100070', 119, CAST(N'2020-12-30 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (120, N'21100080', 120, CAST(N'2020-12-31 00:00:00.000' AS DateTime), 1, 799000.0000, 79900.0000, 878900, 900000.0000, 21100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (121, N'21100090', 121, CAST(N'2021-01-01 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (122, N'21100100', 122, CAST(N'2021-01-02 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (123, N'21100020', 123, CAST(N'2021-01-03 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (124, N'21100030', 124, CAST(N'2021-01-04 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (125, N'21100040', 125, CAST(N'2021-01-05 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (126, N'21100050', 126, CAST(N'2021-01-06 00:00:00.000' AS DateTime), 1, 220000.0000, 22000.0000, 242000, 300000.0000, 58000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (127, N'21100050', 127, CAST(N'2021-01-07 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (128, N'21100050', 128, CAST(N'2021-01-08 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (129, N'21100050', 129, CAST(N'2021-01-09 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (130, N'21100070', 130, CAST(N'2021-01-10 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (131, N'21100080', 131, CAST(N'2021-01-11 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (132, N'21100090', 132, CAST(N'2021-01-12 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (133, N'21100100', 133, CAST(N'2021-01-13 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (134, N'21100020', 134, CAST(N'2021-01-14 00:00:00.000' AS DateTime), 1, 263000.0000, 26300.0000, 289300, 300000.0000, 10700.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (135, N'21100030', 135, CAST(N'2021-01-15 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (136, N'21100040', 136, CAST(N'2021-01-16 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (137, N'21100050', 137, CAST(N'2021-01-17 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (138, N'21100050', 138, CAST(N'2021-01-18 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (139, N'21100050', 139, CAST(N'2021-01-19 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (140, N'21100050', 140, CAST(N'2021-01-20 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (141, N'21100070', 141, CAST(N'2021-01-21 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (142, N'21100080', 142, CAST(N'2021-01-22 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (143, N'21100090', 143, CAST(N'2021-01-23 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (144, N'21100100', 144, CAST(N'2021-01-24 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (145, N'21100050', 145, CAST(N'2021-01-25 00:00:00.000' AS DateTime), 1, 350000.0000, 35000.0000, 385000, 400000.0000, 15000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (146, N'21100070', 146, CAST(N'2021-01-26 00:00:00.000' AS DateTime), 1, 400000.0000, 40000.0000, 440000, 450000.0000, 10000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (147, N'21100080', 147, CAST(N'2021-01-27 00:00:00.000' AS DateTime), 1, 400000.0000, 40000.0000, 440000, 450000.0000, 10000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (148, N'21100090', 148, CAST(N'2021-01-28 00:00:00.000' AS DateTime), 1, 400000.0000, 40000.0000, 440000, 450000.0000, 10000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (149, N'21100100', 149, CAST(N'2021-01-29 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (150, N'21100100', 150, CAST(N'2021-01-30 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (151, N'21100020', 151, CAST(N'2021-01-31 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (152, N'21100030', 152, CAST(N'2021-02-01 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (153, N'21100040', 153, CAST(N'2021-02-02 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (154, N'21100050', 154, CAST(N'2021-02-03 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (155, N'21100050', 155, CAST(N'2021-02-04 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (156, N'21100050', 156, CAST(N'2021-02-05 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (157, N'21100050', 157, CAST(N'2021-02-06 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (158, N'21100070', 158, CAST(N'2021-02-07 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (159, N'21100080', 159, CAST(N'2021-02-08 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (160, N'21100090', 160, CAST(N'2021-02-09 00:00:00.000' AS DateTime), 1, 395000.0000, 39500.0000, 434500, 450000.0000, 15500.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (161, N'21100100', 161, CAST(N'2021-02-10 00:00:00.000' AS DateTime), 1, 750000.0000, 75000.0000, 825000, 850000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (162, N'21100020', 162, CAST(N'2021-02-11 00:00:00.000' AS DateTime), 1, 750000.0000, 75000.0000, 825000, 850000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (163, N'21100030', 163, CAST(N'2021-02-12 00:00:00.000' AS DateTime), 1, 750000.0000, 75000.0000, 825000, 850000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (164, N'21100040', 164, CAST(N'2021-02-13 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (165, N'21100050', 165, CAST(N'2021-02-14 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (166, N'21100050', 166, CAST(N'2021-02-15 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (167, N'21100050', 167, CAST(N'2021-02-16 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (168, N'21100050', 168, CAST(N'2021-02-17 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (169, N'21100070', 169, CAST(N'2021-02-18 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (170, N'21100080', 170, CAST(N'2021-02-19 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (171, N'21100090', 171, CAST(N'2021-02-20 00:00:00.000' AS DateTime), 1, 290000.0000, 29000.0000, 319000, 350000.0000, 31000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (172, N'21100100', 172, CAST(N'2021-02-21 00:00:00.000' AS DateTime), 1, 180000.0000, 18000.0000, 198000, 200000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (173, N'21100020', 173, CAST(N'2021-02-22 00:00:00.000' AS DateTime), 1, 180000.0000, 18000.0000, 198000, 200000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (174, N'21100030', 174, CAST(N'2021-02-23 00:00:00.000' AS DateTime), 1, 180000.0000, 18000.0000, 198000, 200000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (175, N'21100040', 175, CAST(N'2021-02-24 00:00:00.000' AS DateTime), 1, 180000.0000, 18000.0000, 198000, 200000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (176, N'21100050', 176, CAST(N'2021-02-25 00:00:00.000' AS DateTime), 1, 180000.0000, 18000.0000, 198000, 200000.0000, 2000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (177, N'21100050', 177, CAST(N'2021-02-26 00:00:00.000' AS DateTime), 1, 250000.0000, 25000.0000, 275000, 300000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (178, N'21100050', 178, CAST(N'2021-02-27 00:00:00.000' AS DateTime), 1, 250000.0000, 25000.0000, 275000, 300000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (179, N'21100050', 179, CAST(N'2021-02-28 00:00:00.000' AS DateTime), 1, 250000.0000, 25000.0000, 275000, 300000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (180, N'21100070', 180, CAST(N'2021-11-01 00:00:00.000' AS DateTime), 1, 250000.0000, 25000.0000, 275000, 300000.0000, 25000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (181, N'21100080', 181, CAST(N'2021-11-02 00:00:00.000' AS DateTime), 1, 480000.0000, 48000.0000, 528000, 600000.0000, 72000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (182, N'21100090', 182, CAST(N'2021-11-03 00:00:00.000' AS DateTime), 1, 480000.0000, 48000.0000, 528000, 600000.0000, 72000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (183, N'21100100', 183, CAST(N'2021-11-04 00:00:00.000' AS DateTime), 1, 480000.0000, 48000.0000, 528000, 600000.0000, 72000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (184, N'21100020', 184, CAST(N'2021-11-05 00:00:00.000' AS DateTime), 1, 480000.0000, 48000.0000, 528000, 600000.0000, 72000.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (185, N'21100030', 185, CAST(N'2021-11-06 00:00:00.000' AS DateTime), 1, 289000.0000, 28900.0000, 317900, 350000.0000, 32100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (186, N'21100040', 186, CAST(N'2021-11-07 00:00:00.000' AS DateTime), 1, 289000.0000, 28900.0000, 317900, 350000.0000, 32100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (187, N'21100050', 187, CAST(N'2021-11-08 00:00:00.000' AS DateTime), 1, 289000.0000, 28900.0000, 317900, 350000.0000, 32100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (188, N'21100050', 188, CAST(N'2021-11-09 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (189, N'21100050', 189, CAST(N'2021-11-10 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (190, N'21100050', 190, CAST(N'2021-11-11 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (191, N'21100070', 191, CAST(N'2021-11-12 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (192, N'21100080', 192, CAST(N'2021-11-13 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (193, N'21100090', 193, CAST(N'2021-11-14 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (194, N'21100100', 194, CAST(N'2021-11-15 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (195, N'21100050', 195, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (196, N'21100070', 196, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (197, N'21100080', 197, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (198, N'21100090', 198, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (199, N'21100100', 199, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
GO
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (200, N'21100100', 200, CAST(N'2021-11-16 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (201, N'21100070', 5, CAST(N'2021-11-17 00:00:00.000' AS DateTime), 1, 499000.0000, 49900.0000, 548900, 550000.0000, 1100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (202, N'21100080', 7, CAST(N'2021-11-17 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (203, N'21100090', 123, CAST(N'2021-11-17 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (204, N'21100100', 150, CAST(N'2021-11-17 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
INSERT [dbo].[HoaDonBanHang] ([maHDBH], [maNhanVienLapHDBH], [maKH], [thoiGianLap], [tongSLSP], [thanhTienChuaThue], [thueGTGT], [tongTien], [soTienKhachDua], [soTienThoiLai]) VALUES (205, N'21100100', 5, CAST(N'2021-11-17 00:00:00.000' AS DateTime), 1, 699000.0000, 69900.0000, 768900, 800000.0000, 31100.0000)
SET IDENTITY_INSERT [dbo].[HoaDonBanHang] OFF
SET IDENTITY_INSERT [dbo].[HoaDonNhapHang] ON 

INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (1, N'21100020', 1, N'Nguyễn Thế Như', CAST(N'2019-01-01 00:00:00.000' AS DateTime), CAST(N'2019-01-01 00:00:00.000' AS DateTime), 200, 79800000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (2, N'21100030', 2, N'Nguyễn Văn Tín', CAST(N'2019-07-27 00:00:00.000' AS DateTime), CAST(N'2019-07-27 00:00:00.000' AS DateTime), 230, 154820000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (3, N'21100040', 3, N'Dương Đình Hùng', CAST(N'2019-08-08 00:00:00.000' AS DateTime), CAST(N'2019-08-08 00:00:00.000' AS DateTime), 230, 56835000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (4, N'21100050', 4, N'Nguyễn Thanh Bình', CAST(N'2020-10-29 00:00:00.000' AS DateTime), CAST(N'2020-10-29 00:00:00.000' AS DateTime), 260, 87085000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (5, N'21100050', 5, N'Nguyễn Trung Tín', CAST(N'2019-12-02 00:00:00.000' AS DateTime), CAST(N'2019-12-02 00:00:00.000' AS DateTime), 230, 89675000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (6, N'21100050', 6, N'Nguyễn Thế Như', CAST(N'2020-01-01 00:00:00.000' AS DateTime), CAST(N'2020-01-01 00:00:00.000' AS DateTime), 245, 123600000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (7, N'21100050', 7, N'Nguyễn Văn Tín', CAST(N'2020-02-01 00:00:00.000' AS DateTime), CAST(N'2020-02-01 00:00:00.000' AS DateTime), 270, 65650000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (8, N'21100070', 8, N'Dương Đình Hùng', CAST(N'2020-02-02 00:00:00.000' AS DateTime), CAST(N'2020-02-02 00:00:00.000' AS DateTime), 145, 47750000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (9, N'21100080', 9, N'Nguyễn Thanh Bình', CAST(N'2020-02-03 00:00:00.000' AS DateTime), CAST(N'2020-02-03 00:00:00.000' AS DateTime), 115, 41830000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (10, N'21100090', 10, N'Nguyễn Trung Tín', CAST(N'2020-06-04 00:00:00.000' AS DateTime), CAST(N'2020-06-04 00:00:00.000' AS DateTime), 65, 32435000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (11, N'21100100', 11, N'Nguyễn Thế Như', CAST(N'2020-06-05 00:00:00.000' AS DateTime), CAST(N'2020-06-05 00:00:00.000' AS DateTime), 115, 57385000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (12, N'21100020', 12, N'Nguyễn Văn Tín', CAST(N'2020-08-06 00:00:00.000' AS DateTime), CAST(N'2020-08-06 00:00:00.000' AS DateTime), 135, 90365000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (13, N'21100030', 13, N'Dương Đình Hùng', CAST(N'2020-10-07 00:00:00.000' AS DateTime), CAST(N'2020-10-07 00:00:00.000' AS DateTime), 190, 100510000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (14, N'21100040', 14, N'Nguyễn Thanh Bình', CAST(N'2020-12-08 00:00:00.000' AS DateTime), CAST(N'2020-12-08 00:00:00.000' AS DateTime), 100, 35900000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (15, N'21100050', 15, N'Nguyễn Trung Tín', CAST(N'2021-01-09 00:00:00.000' AS DateTime), CAST(N'2021-01-09 00:00:00.000' AS DateTime), 55, 20145000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (16, N'21100050', 16, N'Nguyễn Thế Như', CAST(N'2021-02-10 00:00:00.000' AS DateTime), CAST(N'2021-02-10 00:00:00.000' AS DateTime), 155, 57195000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (17, N'21100050', 17, N'Nguyễn Văn Tín', CAST(N'2021-04-12 00:00:00.000' AS DateTime), CAST(N'2021-04-12 00:00:00.000' AS DateTime), 115, 50985000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (18, N'21100050', 18, N'Dương Đình Hùng', CAST(N'2021-06-12 00:00:00.000' AS DateTime), CAST(N'2021-06-12 00:00:00.000' AS DateTime), 115, 52785000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (19, N'21100070', 19, N'Nguyễn Thanh Bình', CAST(N'2021-09-13 00:00:00.000' AS DateTime), CAST(N'2021-09-13 00:00:00.000' AS DateTime), 180, 89820000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (20, N'21100080', 20, N'Nguyễn Trung Tín', CAST(N'2021-11-11 00:00:00.000' AS DateTime), CAST(N'2021-11-11 00:00:00.000' AS DateTime), 315, 161085000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (21, N'21100020', 21, N'Nguyễn Trung Tín', CAST(N'2021-11-11 00:00:00.000' AS DateTime), CAST(N'2021-11-11 00:00:00.000' AS DateTime), 15, 25080000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (22, N'21100030', 22, N'Nguyễn Thế Như', CAST(N'2021-11-11 00:00:00.000' AS DateTime), CAST(N'2021-11-11 00:00:00.000' AS DateTime), 2, 36000000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (23, N'21100040', 23, N'Nguyễn Văn Tín', CAST(N'2021-11-11 00:00:00.000' AS DateTime), CAST(N'2021-11-11 00:00:00.000' AS DateTime), 2, 36000000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (24, N'21100050', 24, N'Dương Đình Hùng', CAST(N'2021-11-11 00:00:00.000' AS DateTime), CAST(N'2021-11-11 00:00:00.000' AS DateTime), 2, 36000000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (25, N'21100050', 25, N'Nguyễn Thanh Bình', CAST(N'2021-11-12 00:00:00.000' AS DateTime), CAST(N'2021-11-12 00:00:00.000' AS DateTime), 5, 39500000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (26, N'21100050', 26, N'Nguyễn Trung Tín', CAST(N'2021-11-12 00:00:00.000' AS DateTime), CAST(N'2021-11-12 00:00:00.000' AS DateTime), 5, 39500000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (27, N'21100050', 27, N'Nguyễn Thế Như', CAST(N'2021-11-12 00:00:00.000' AS DateTime), CAST(N'2021-11-12 00:00:00.000' AS DateTime), 10, 17120000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (28, N'21100070', 28, N'Nguyễn Văn Tín', CAST(N'2021-11-13 00:00:00.000' AS DateTime), CAST(N'2021-11-13 00:00:00.000' AS DateTime), 10, 17520000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (29, N'21100080', 29, N'Nguyễn Trung Tín', CAST(N'2021-11-13 00:00:00.000' AS DateTime), CAST(N'2021-11-13 00:00:00.000' AS DateTime), 7, 19530000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (30, N'21100090', 30, N'Nguyễn Thế Như', CAST(N'2021-11-13 00:00:00.000' AS DateTime), CAST(N'2021-11-13 00:00:00.000' AS DateTime), 7, 19530000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (31, N'21100100', 31, N'Nguyễn Văn Tín', CAST(N'2021-11-14 00:00:00.000' AS DateTime), CAST(N'2021-11-14 00:00:00.000' AS DateTime), 7, 19530000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (32, N'21100020', 32, N'Dương Đình Hùng', CAST(N'2021-11-14 00:00:00.000' AS DateTime), CAST(N'2021-11-14 00:00:00.000' AS DateTime), 15, 5985000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (33, N'21100030', 33, N'Nguyễn Thanh Bình', CAST(N'2021-11-14 00:00:00.000' AS DateTime), CAST(N'2021-11-14 00:00:00.000' AS DateTime), 15, 5985000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (34, N'21100040', 34, N'Nguyễn Trung Tín', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 15, 5985000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (35, N'21100050', 35, N'Nguyễn Thế Như', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 10, 7990000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (36, N'21100050', 36, N'Nguyễn Văn Tín', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 10, 7990000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (37, N'21100050', 37, N'Nguyễn Trung Tín', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 20, 15980000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (38, N'21100050', 38, N'Nguyễn Thế Như', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 60, 13200000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (39, N'21100070', 39, N'Nguyễn Văn Tín', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 60, 14490000.0000)
INSERT [dbo].[HoaDonNhapHang] ([maHDNH], [maNhanVienLapHDNH], [maLoHang], [tenNguoiGiaoHang], [thoiGianDatHang], [thoiGianGiaoHang], [tongSLSP], [tongTien]) VALUES (40, N'21100080', 40, N'Dương Đình Hùng', CAST(N'2021-11-15 00:00:00.000' AS DateTime), CAST(N'2021-11-15 00:00:00.000' AS DateTime), 60, 15780000.0000)
SET IDENTITY_INSERT [dbo].[HoaDonNhapHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (1, N'4ŭR$jẩqXkjø?$ồĔ4', N'4/80;371@177', N'2KFF1NW/fqêEqàWqẫxO#*7jlỠƮkN#*;jläfWjlẤK#ffßF6/2.6.43', 1, CAST(N'2020-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (2, N'8fễQ&[Ā`VmfƧƨJ6', N'6,6,70:+7244', N'4N?I/LU-doẝiP!doèCoẩvM!(7.!*Q-jBoÿWvdD5ỒO!coộƱČ!-D-31', 0, CAST(N'2020-02-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (3, N'9^wƘƹ_TẪ?)eỎp~^W9', N'6/:*7+6,<-33', N'1gshRògHỘG%+;sẬzP%+50%fsỜƵgu1HNzgP1fsózK%mĈU%mỊxzfS:265', 1, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (4, N'2w|B''aỘsXnlƨƮK7', N'08;28864<733', N'6btcSóbIộB&&;tầ{K&&;mhợƪnJ&&tÜ\n]ầ<&.96', 1, CAST(N'2020-01-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (5, N'7sẺnA%ẚMù`S5', N'5320618,5311', N'1nmoL&ìnB&ỒNVS&+nmòA&mèS&mẳtw2sçB&tæA&ftỜƶĐ&896', 0, CAST(N'2019-06-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (6, N'2lỉgP}ửPolƩƮL8', N'43<,9-5/7/44', N'47tẩ{M&(njốČ&jèP&(tềqmJ&jĉR&jịu{cTG57+=386', 0, CAST(N'2021-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (7, N'1fptjM"gpßjS"ôX2', N'359/A.@.>099', N'7FFA1IW/aqåEqÛWqẦxJ#%7jgỠƩkI#%;jgäaWjgẤF#afÚF6*2)6)43', 0, CAST(N'2020-01-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (8, N'8fỆqz@%fẪmYlfù;%ỏĕ5', N'6*;/>*?*<288', N'8U;P&XL($pfô:(fêL(fẵmY4,9ofụƨpH($v]ĘofớĈ(07);8', 0, CAST(N'2019-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (9, N'5tx?#pỲC#bqẲē3', N'2.<176;/9666', N'4nổSåD%(rẻnG%jåkM1csƝƵ@%csƝƵdH1ÜMljỒR%4=5', 1, CAST(N'2021-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (10, N'4e]uạ|P''cuðJpõI7', N'5,8+6,33<033', N'4S?N*VP&(njầdZnjò>&jẳqW21&ctộƶdV2ctỉxP&dtèHtảxP&=7-51?6', 0, CAST(N'2020-01-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (11, N'4kjẤD#_ýdSlõE3', N'324575704522', N'0hviU õhK ớH(P\ 44(.Y 4nẫĐ(nüT(0;/;2<8', 0, CAST(N'2019-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (12, N'7uẸ`āM''öS7', N'20;6;4<4=355', N'4Q?L*TP$(4-$jằqU0.5kjỡƬlL$(ljấD$jấR$ƬWF37+=064', 0, CAST(N'2021-03-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (13, N'2g\nloK&etƟƶB&etẵĖ6', N'6+:,>*92@177', N'3eufTôeJỚE''Ỏom''euÝoQuẪ|eUāeW3-8nkỤƭoM'')ἀP''kĊS''çSI0629,;387', 0, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (14, N'4tÜuP&pẳdTúcT6', N'15778646:244', N'7T<O''WM''%8uẦ|J''%ogỒĉ''géM''`uỖƷaW3gỌr|`Uuü]uẾnnG''+>(9*97', 1, CAST(N'2021-09-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (15, N'9_uẘOüM''Š]7', N'8,7*90<.:055', N'0hpiO ïhE ổH",7 pậwQ",7 inởưjP",pâX jcảB"452', 0, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (16, N'1ldM#ùWjmãnK3', N'41>/=,>19466', N'7R<M3IY1\Ữĉ%ỠmM%gẲnV1ỆmM%asåG3I%%yẞmG%`sỊmM%,:5', 1, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (17, N'6ổqH)oỸB)ốę9', N'9,8*?,9+8.88', N'26qẫxO#*8,S/lẪR#lĆT#óY5053', 1, CAST(N'2019-01-26 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (18, N'1x\ầG&ỒN6', N'8*>(<*>*>-88', N'6bucTôbJỚB''&<uầ|K''&<nhỤƪoJ''&uÜ]o]Ẩ<''.<7', 0, CAST(N'2021-01-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (19, N'2aỐeQføkN#ŧY3', N'4.8282<0?/77', N'4N?I*QP!(2oẩvM!(ijỌČ!jãP!coộƱdQ-jỆuvcOoÿWoềzqhJ!.8+4321', 0, CAST(N'2021-07-21 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (20, N'5dlO$crÛlO$ỎL4', N'1396@1<6A488', N'4dpeOïdEổD"ọjl"dpÜjPpẩwdPüdR.,3ijởƬjL"(ỻO"jąR"æND/114+6232', 1, CAST(N'2020-02-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (21, N'7`tƩNmgĉĉ&ãR6', N'707)71:-:.44', N'7U<P''XM(%pgô;(gêM(gẵnY4-9ogụƩpI(%v^Ęogớĉ(17*;8', 1, CAST(N'2020-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (22, N'8_rYvL$_rglH$ỏĔ4', N'31:275619422', N'2fugTôfJỚF''N[33''lẴsx3euịyR''fuêIuấyR''190''ỏz7', 0, CAST(N'2019-08-13 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (23, N'2ilƣƮjN"aüfRjlỵsJ2', N'7,:/:0=0@,77', N'36sẪzN%)mkỐč%kçQ%)sỂ~rlK%kĈS%kỊvzdSF66,9.75', 0, CAST(N'2021-04-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (24, N'2etsnL&aỗsWo÷H6', N'7,4.6,:1;044', N'7nỒSåA%%rẸnD%gåhM1`sƚƵ=%`sƚƵaH1ÙMlgỒO%1=5', 0, CAST(N'2021-04-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (25, N'8hfbaHhfĄĈ!âM1', N'16?1>7A2=799', N'6T=O5J[3buẛoN''buæIuầ|K''&=,''(W3hHuý]|bJ;ỘM''auỗƷĊ''+J0>7', 0, CAST(N'2020-02-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (26, N'5brôXxẨlI$ỎL4', N'536/8.<.=.66', N'8`raQñ`Gỗ@$HX0-$fằmu0_rễvL$`räFrẟvL$)4*$ỉw4', 1, CAST(N'2019-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (27, N'4ojpI''cukoL''iẨdW7', N'10:49363?466', N'1QBL-TS$+lmấgXlmðA$mằtU04$frỜƴgT0frỌvS$grëFrẦvS$@5034=4', 1, CAST(N'2019-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (28, N'3qkõ?)ÞKqkỼrQ9', N'7,?0;+;/;188', N'4dneMídCồD LT,dnèBnÞTnẩum (tÝCuÜBgjờƬđ6140', 0, CAST(N'2020-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (29, N'1ỚiM!ùUjøC1', N'416,7/4/7311', N'7R<M''UM%%mgñ;%gçM%gẲnV1-6lgỢƩmI%%s^ĕlgỘĉ%14-:5', 1, CAST(N'2019-08-13 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (30, N'0gvơƸH(cĂhX qùJ8', N'71>-;.7,<,77', N'6ohpG''ço=''ọOWN''&ohó<''héN''hẴox3nè=''oç<''auỗƷċ''3:7', 0, CAST(N'2020-01-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (31, N'6ÚP}ứPqóJ8', N'4,:070927/55', N'9jỐOá?!#nẶjB!eáfI-^oƘƱ;!^oƘƱ_D-×IheỎM!/91', 0, CAST(N'2021-01-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (32, N'8mfuD&`tØnL&fậjZ6', N'256.<.;2=566', N'8aỞF%ØM1eỄaPsØt@%$lfƦƨIlfƦƨm;%$å@%_sễ[8*65', 1, CAST(N'2020-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (33, N'7\Ổ`UjỆnG''öS7', N'9.<+8,9'':.44', N'8`qaPð`FỖ@#HW/-#fẰmt/_qễuL#`qäEqẟuL#/7*#ỉv3', 0, CAST(N'2019-08-13 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (34, N'5bqẬKẤC#iẪmW3', N'350150001500', N'3JEE"+RQ")eỦĒứeVpẪwN")ỏeVjkî?"+R.qầePikồeV5642', 0, CAST(N'2020-06-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (35, N'3gkơƭhM `úePôdN0', N'22851.303611', N'1gshRògHỘG%+;sẬzP%+50%fsỜƵgu1HNzgP1fsózK%mĈU%mỊxzfS:265', 0, CAST(N'2019-01-26 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (36, N'3ilP|ẪpK(çT8', N'8)<07-9(9+44', N'4M?H.LT,-Q,kaG ]Đ.L (ủdTnÿVnềyqgJ 270', 0, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (37, N'9yØmG%ØGleåfM5', N'3150652-7211', N'74oẦvJ!%6''Q-gẨM!gĄO!îW8031', 1, CAST(N'2019-02-15 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (38, N'7{ẚėuü]û`U7', N'51=0>2<3@.88', N'9_u`Tô_JỚ?''G[3,''eẴlx3^uỄyK''_uãIuẞyK''''7)''Ỉz7', 1, CAST(N'2020-02-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (39, N'7aoỄiM!îWhgƢƩE1', N'077790313311', N'2fngMífCồF *6nẫuO *0/ enớưfp,GIufK,enòuJ lăT lễwueN9110', 1, CAST(N'2019-01-26 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (40, N'8qÚxD#_qgkH#íY3', N'8-50:*5)>+55', N'45rẩyM$(ljỏČ$jæP$(rề}qkJ$jćR$jỉuycRE55+;364', 1, CAST(N'2019-01-26 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (41, N'5bq\xL#ẜKjiãjK3', N'9''4/6.7(9,11', N'2NAI,QR!*ilẢfUilí@!lẮsR-3!eoớƱfQ-eoịsR!foêCoấsR!?2/0071', 1, CAST(N'2021-07-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (42, N'6nạĊ bncMhhỳoH0', N'3/5-83947055', N'4N?I*QP!(1-!jẮqR-.2hjỞƬiL!(ijẢD!jẢR!ƬTC34+4/31', 1, CAST(N'2021-06-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (43, N'3zS!eoÝiQ!çM1', N'5/836-4,7011', N'9DH?3GY1_sãGsÙYsẤzH%#9leỢƧmG%#=leæ_YleẦD%_hØH8(4-8''65', 0, CAST(N'2019-01-26 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (44, N'1fsƠƵgUẦG%mỊxzfS5', N'1492917/:422', N'2fqgPðfFỖF#ỏkn#fqÞkRqẫxfQýfS/.4jlỠƮkN#*ỼQ#lĆT#èOE1235-5/43', 0, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (45, N'3fhQ ÷TgkàlH0', N'2681526/;144', N'0VCQ.YT),qnõB)nëT)nẶuZ 54: pnỦưqP),weę pnỜĐ)884?9', 1, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (46, N'7gơL iệbDô`N0', N'03484367:344', N'15rẬyP$+lmỏď$mæS$+rỄ}tkM$mćU$mỉxyfRE85.8064', 1, CAST(N'2019-08-13 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (47, N'1nmẸG''ìoB''mẮq[7', N'5/A3?.>1B.99', N'8N;IqL!$4oấvI!+!_oổƱ`Q-_oầiL!gb;!)0171', 0, CAST(N'2020-01-21 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (48, N'1frtlM$bốfRlmỷtL4', N'8);,?*=0>/88', N'7O<J''RM"%jgî;"gäM"gắnS.-3igởƩjI"%p^Ēigổĉ"11*52', 0, CAST(N'2019-12-27 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (49, N'2wẫJjlkK"epƟƲB"ốJ2', N'02;0<653=755', N'6btcSóbIộB&JZ2/&hẳow2atệxN&btæHtạxN&+6,&ịy6', 1, CAST(N'2019-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (50, N'4jjọdVjjkI"cpƝƲ@"æN2', N'34238.946522', N'8O;J&RL"$5pấwI"$7ifởƨjH"$pẟVpûX÷N"/3''3*32', 1, CAST(N'2021-06-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (51, N'7hẪa[jỆnG''ãS7', N'323/30;-7033', N'3jỖOáE!)nẼjH!kálI-doƞƱA!doƞƱeD-ÝIhkỎS!021', 0, CAST(N'2021-09-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (52, N'7\ỚE!`ohiI!öM1', N'02838244<344', N'6S=N(VN&&nhầbZnhò<&hẳoW2/&atỗƶbV2atệxN&btæHtạxN&;7+5,<6', 1, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (53, N'3kkỡƭGþQ$òZ4', N'8,1-1(2.:-11', N'2SANNZ2ønN&lèR&*ƧA&sÈ<396', 1, CAST(N'2020-02-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (54, N'2zẟĖiønN&ûR6', N'3.847252=244', N'4N?I*QP!(2oẩvM!(ijỌČ!jãP!coộƱdQ-jỆuvcOoÿWoềzqhJ!.8+4321', 1, CAST(N'2020-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (55, N'2mẫf\}ửPüeV8', N'433.9-8.7311', N'41nẩuM (hjịČ jâP (nềyqgJ jăR jễuucNA51+2.20', 0, CAST(N'2021-02-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (56, N'8ở`RþL$_rắĔ4', N'2/;/8570<333', N'03 pậwQ",jnọĐ"näT",pễ{uiN"nąV"nệywgP C93/4242', 1, CAST(N'2021-04-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (57, N'7igí;!gẦnUhgõ<!öM1', N'9''7.2)1''6*11', N'2KKF6N\4fvêJvà\vẫ}O(*<olụƮpN(*@oléf\olẩK(fkßK;/77>.98', 0, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (58, N'7nếbHpỀi= öL0', N'62:0;25-8-33', N'3R@MuQ%)8sẪzN%0%dsỚƵeU1dsẬmQ%lf@%.4/75', 1, CAST(N'2020-08-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (59, N'8kfemUùN$íZ4', N'717,8-<1>.55', N'5codNîcDỔC!KU-/!)R-iẤċ!iõO!+4*4/31', 1, CAST(N'2020-02-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (60, N'3drƞƴeTlkmJ$keeT4', N'07=5=3>6=777', N'5T>O)WO''''7,''iẴpX3-8niỤƫoK''''oiẨC''iẨQ''ƫZI2:*@497', 0, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (61, N'6aqokH#]ỐaQjhƤƪG3', N'5+>2;+>39.77', N'2OAJ0NV.øjN"läR"lắsS.epịtR"fpêĒjlọpV8142', 0, CAST(N'2020-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (62, N'5jẪc[üQ''åS7', N'5,?.>170@277', N'5R>M3KY1csẜmO%csçGsẨzL%'';-%)U1iFsþ[zcH9ỖN%bsỘƵċ%,H1<5', 0, CAST(N'2019-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (63, N'3ewéKyỄrA)kỎv~dW9', N'4,74:1:16366', N'6U=P6J\4]ựĊ(ỡpN(hẵoY4ệpN(bvæJ6J(&|ẟpH(avịpN(-=8', 0, CAST(N'2019-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (64, N'9uÙh: ìVgeơƧD0', N'4,6-4-20:322', N'3erfQñeGỗE$Ỏlm$erÝlQrẪyeRþeT0-5kkỡƭlM$)ỽP$kćS$çPF0326,6.54', 0, CAST(N'2019-12-27 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (65, N'5iåpOkilH#øO3', N'23>5<3:59688', N'7apbOïaEổA"IV.."gắns.`pỆtM"apåDpẠtM",4+"Ịu2', 1, CAST(N'2019-12-27 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (66, N'1xwC"mầtVjmỵtJ2', N'30=.<2647055', N'0OCJ.RT",5 pậwQ",7 inởưjP",pầV păX ÷V"73/3232', 1, CAST(N'2020-08-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (67, N'3|rKkklJ#dqƞƳA#òY3', N'707.7.7)8155', N'8U;P&XL($8)(fẵmY4*9ofụƨpH($pfẩ@(fẩN(ƨ[J/;''A,<8', 1, CAST(N'2019-12-27 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (68, N'5vÝ}L(ỆpO(øT8', N'25939475:155', N'0PCK.ST#,4 qậxQ#,knỎĐ#nåT#gqờƳhS /nỈyxgQ qăY qễ|ujN#2:/6743', 1, CAST(N'2021-10-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (69, N'9{lFpúXkðD2', N'2.81:0?4@388', N'7lỒQãA#%pẸlD#gãhK/`qƚƳ=#`qƚƳaF/ÙKjgỐO#2<3', 1, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (70, N'5brƫLrẠyO$brïGkiƥƫH4', N'9.7*2''3''9*22', N'15S7O"dốgMpĂXp`jO"361/161"ƯeimwgE2', 1, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (71, N'7ghNç;&fầaV6', N'40A-A2<19399', N'2SAN,VR&*6/&lẳsW207mlợƮnN&*nlầF&lầT&ƮYH59-9186', 0, CAST(N'2020-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (72, N'3ikcrSikqeRödP2', N'2.122/253611', N'4dseRòdHỘD%LY11%jẲqv1csỉwP%dsèGsảwP%39.%ọx5', 1, CAST(N'2021-04-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (73, N'5pçcHỐcYmiỸpM5', N'3-;-:452<233', N'2TAON[3øoN''léR''*ƨA''sÉ<6=7', 0, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (74, N'5lifpVlitcUliåjM5', N'9+8)<+:+=*55', N'8;vấ}I($=&X4fắL(fċN(í^:*:8', 1, CAST(N'2021-07-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (75, N'1igThmiL fnƠưC ỒH0', N'5,<,4,;/6344', N'7M<HIT,óhI gâM %ơ< nÂ6.30', 0, CAST(N'2020-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (76, N'5vƜ[ồc\übV8', N'9*>.;.=)A,88', N'5csdRòcHỘC%'':sẨzL%'':liỢƫmK%''sÝ[m^Ầ=%/:5', 1, CAST(N'2019-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (77, N'9_uãIuẜ|K''^uëJneçfO7', N'809-;)8-=/77', N'2TAO5N[3fuẟoR''fuêIuẫ|O''*=0'',W3lHuā]|fJ;ỘQ''euớƷĎ''/J/97', 0, CAST(N'2021-03-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (78, N'7ānUgỊyJ$geaT4', N'8/;-8+7/?/77', N'5P>K1KW/cqẜkO#cqçEqẨxL#''9-#)S/iDqþYxcF7ỔN#bqỘƳċ#,F153', 1, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (79, N'4crƝƴD$ÝFkjƥƬH4', N'7/:04.</9,44', N'0SCN.VT&,61&nẳuW 227 mnợưnP&,nnầH&nầV&ưY H79/?486', 0, CAST(N'2020-08-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (80, N'9l_WøM#^qẮē3', N'2670=/907155', N'3U@P+XQ()pkẩe\pkô?(kẵrY42(dvỚƸeX4dvỊzQ(evéJvẤzQ(>9.7/>8', 1, CAST(N'2019-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (81, N'5ŬQ#bqjkK#hẤcS3', N'609+;,7.9244', N'1imjL!ìiB!ỒIQS!+imíA!mãS!mẮtr-sâB!táA!foỜƱĐ!/41', 1, CAST(N'2020-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (82, N'7vẦIûM!gbaQ1', N'26747064<144', N'3evfUõeKớE(M\42(kẵry4dvỊzQ(evéJvẤzQ(4</(Ỏ{8', 1, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (83, N'9oeƸ?(^vúĘpeỻlP8', N'605+6-203222', N'0PCK.ST#,6 qậxQ#,8 jnỠưkP#,qầW qăY øV#74/4243', 1, CAST(N'2021-05-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (84, N'6o[Siị{K&hgbV6', N'6.5-8*2,5222', N'1oỘTæG&+sẾoJ&mænN2ftƠƶC&ftƠƶgI2ßNmmồU&276', 0, CAST(N'2021-05-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (85, N'9eỆ`MÿK%áQ5', N'9(7/8*7/9*33', N'3O@J+RQ")3pẪwN")jkọč"käQ"dpỚƲeR.kệvwdPpĀXpỂ{riK"/9,4.42', 0, CAST(N'2020-02-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (86, N'1fqŨGsỆlC#ŨY3', N'2485316.3111', N'6bucTôbJỚB''&<uầ|K''&<nhỤƪoJ''&uÜ]o]Ẩ<''.<7', 1, CAST(N'2021-01-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (87, N'5lifpVhỈlI%åQ5', N'228151:09122', N'8EL@7H]5+)fẶmZ5-)_wổƹ`Y5fẰL)fČN)í_@)8)<):9', 1, CAST(N'2020-12-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (88, N'6nhoG&çn=&hịs{aT6', N'35538-951411', N'5Q>L2KX0,U0jeF$\Ĕ2K$''ừcXrþZrỀ}pkI$174', 1, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (89, N'7iỎbOüO''ỌO7', N'2385:68/8588', N'1OBJ-RS"+20"mắtS.13imởƯjO"+jmảG"mảU"ƯUD65.;342', 1, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (90, N'2eu_pE''aāfWolỺsO7', N'219/90>2<566', N'8`qaPð`FỖ@#$8qấxI#$8jfỠƨkH#$qÚYk[Ấ:#,73', 0, CAST(N'2020-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (91, N'8`w9)lẶ`WpfƪƨM9', N'10;44187:244', N'7FIA4IZ2atåHtÛZtẦ{J&%:mgợƩnI&%>mgçaZmgầF&aiÚI9*52<)76', 0, CAST(N'2020-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (92, N'8|N#ÙE÷_Q3', N'9.;*?)<.:/99', N'2SAN4NZ2ønN&lèR&lẳsW2etịxR&ftêĖnlốpZ<176', 0, CAST(N'2021-07-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (93, N'4|qKfọxM#ùO3', N'2/92@5?.;188', N'8P;K&SL#$kfẤ`Wkfï:#fẰmT/-#_qổƳ`S/_qễuL#`qäEqẟuL#94)2-<3', 1, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (94, N'2hlúR!eoāđj÷C1', N'3.919.50:022', N'7arbQñaGỗA$IX0-$''U0gầĉ$gøM$)7(7-64', 1, CAST(N'2020-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (95, N'0gúvT$ílC$ỗĔ4', N'2/<.@6;5=688', N'1guhTôgJỚG''Ốoo''gußoSuẬ|gUāgW3/8nmỤƯoO''+ἀR''mĊU''éSI2649.;087', 0, CAST(N'2021-04-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (96, N'0nnầH&uỵH&nịy{gT6', N'9,8.?,=''>,88', N'2KJF5N[3fuêIuà[uẫ|O''*;nlỤƮoN''*?nlèf[nlẨK''fjßJ:/6.:.87', 0, CAST(N'2019-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (97, N'2}sHgølN$ŧZ4', N'9(8*4(5.8*11', N'32oẪvN!)ikỌč!kãQ!)oỂzrhK!kĄS!kỆvvdOB62,5.31', 1, CAST(N'2019-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (98, N'7`sƚƵaUlgĈĉ%gẬkY5', N'225.:5:5>155', N'9U:P%XK(#9vẤ}H(#peồć(eêK(^vỔƸ_X4eọp}^Vvú^vẼloE()?&:(:8', 0, CAST(N'2020-12-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (99, N'3`ởI&etÝnQ&ỐN6', N'9-8/6+4,5/11', N'8V;Q7H]5[ỲĈ)ởqL)fẶmZ5ễqL)`wäK7H)$}ẝqF)_wỉqL)+>9', 1, CAST(N'2021-09-11 15:33:04.000' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (100, N'0yệrD)nẮu] ýgW9', N'346031826511', N'2NAI,QR!*1/!lẮsR-02hlỞƮiN!*ilẢF!lẢT!ƮTC54-:731', 0, CAST(N'2019-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (101, N'2olHnlĊĎ''ûS7', N'718+9,7,9033', N'5O>J)RO"''3pẨwL"''jiọċ"iäO"bpỘƲcR.iệtwbPpþXpỀ{piI"-9*4,32', 0, CAST(N'2019-02-15 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (102, N'2{T"ßDk÷D2', N'2681:293;677', N'4Q?L*TP$(4-$jằqU0.5kjỡƬlL$(ljấD$jấR$ƬWF37+7/64', 0, CAST(N'2021-07-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (103, N'1hoS''mĊU''fuẶė7', N'3450:4<1;055', N'7:uẦ|J''%<''W3gẮM''gĊO''î]7)97', 1, CAST(N'2021-02-21 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (104, N'4jÜpD!_ỒqRhjƢƬE1', N'42;/<.;.?/77', N'8EL@7H]5+)fẶmZ5-)_wổƹ`Y5fẰL)fČN)í_@)8)<):9', 0, CAST(N'2021-01-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (105, N'0nỂY#pỊiG ÷gQ3', N'9+3*6(3''6,00', N'3qkrJ)êq@)ỐQYQ))qkõ?)këQ)kẶrz5qê@)ré?)dwỚƹĎ)-<9', 0, CAST(N'2019-12-27 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (106, N'8g_TnfoE&_tƙƶ<&eầ`V6', N'34922.1.4011', N'6N=I/JU-ôiJ!hãN!hẮoR-aoệsN!boæđihỌlU7-21', 0, CAST(N'2019-02-15 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (107, N'3erỰyN$ỈlQ$kẫoX4', N'6+9-:*;/<-55', N'7Q<LtM$%7rẦyJ$,$`rỖƴaT0`rẨlM$he<$*3.94', 1, CAST(N'2019-12-27 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (108, N'6qềj>!nẮbOhháiI1', N'7.8.;0<)?,77', N'1PBK-SS#+30#mẰtT/14jmỠƯkO#+kmẤG#mẤU#ƯVE66.<853', 0, CAST(N'2021-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (109, N'3`ỢI)êq@)kẰo]9', N'024230307322', N'1PBKsS#+6qẬxP#2#fqỜƳgS/fqẮkS#ndB#02483', 1, CAST(N'2021-07-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (110, N'1qU(mật\omüB(üT8', N'8.8+1-90:+11', N'8S;N4HZ2ònH&fèL&fẳmW2_tễxL&`täĖnfốjZ<+86', 0, CAST(N'2019-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (111, N'0ràxH)ịqT)ýU9', N'13;7:1:/=788', N'2fogNîfDỔF!*6oẫvO!*6hlỞƮiN!*oàWiaẢ@!241', 0, CAST(N'2020-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (112, N'4ljŮ@%lỌeInõG5', N'6282@2@.@-88', N'6S=N4JZ2+W2igE&[Ė4J&&ửbZtý\tếomH&096', 1, CAST(N'2021-06-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (113, N'3nkĀQ''rỶE''kỌv|dU7', N'43<0;-=4=/99', N'7S<N4IZ2\ữĉ&ỠnM&gẳnW2ỆnM&atåH4I&%zẞnG&`tỊnM&,;6', 1, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (114, N'1ŮU%ìmB%éQ5', N'62=.5/:/;-55', N'6bncMíbCồB &5nầuK &5ghờƪhJ &nÜVh]ạ< .40', 1, CAST(N'2021-05-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (115, N'6oỈcQỔb]ýaW9', N'4/8.=0;,7/55', N'57rẨyL$''9)T0iẫO$ićQ$ðZ6-64', 1, CAST(N'2021-06-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (116, N'1pmIéA(éT8', N'5-?,9371:377', N'5HGC2KX0.$iằpU00$brỘƴcT0iẫO$ićQ$ðZ;,3,7,54', 0, CAST(N'2019-01-26 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (117, N'2ộnL&ënA&kầfV6', N'41<,?4=.8477', N'1PBK-SS#+30#mẰtT/14jmỠƯkO#+kmẤG#mẤU#ƯVE66.6253', 1, CAST(N'2020-12-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (118, N'4dweVpjxdYpjƪƬM9', N'538/50123300', N'6bocNîbDỔB!&6oầvK!&6hhỞƪiJ!&oÜWi]Ả<!.51', 1, CAST(N'2021-07-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (119, N'5qẺ\ẤC#øO3', N'6091:/9*9133', N'2TAOwR''*:uẫ|O''1''euớƷfW3euậoR''mhA''/67=7', 0, CAST(N'2020-12-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (120, N'5^ỎbOỌcUhiájI1', N'7-5):*:)=044', N'2fqgPðfFỖF#NW/2#,T/lẦĎ#l÷R#.6-6073', 0, CAST(N'2019-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (121, N'4_ỠH''ÝInjçkO7', N'8*:-4,8,8033', N'2fngMífCồF ỏhn fnÞhRnẫufNúfP,.1glờƮhN *ỹQ lăT èLB1/32-2610', 1, CAST(N'2020-08-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (122, N'2wzB%rẲfSmlỸsM5', N'2/9/;2:19333', N'4N?I/LU-öiL!jãP!jẮqR-coỉsP!doèđijỌnU7/31', 1, CAST(N'2020-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (123, N'7pẺkA"`phjI"ỌJ2', N'2282;4>4@388', N'22oẫvO!*ilỌĎ!lãR!*oểzshL!lĄT!lỆwveOB72-8531', 0, CAST(N'2020-12-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (124, N'1tPkỌoM(mắq\8', N'6,9-8,4*2122', N'3R@M3MY1÷mM%kçQ%kẲrV1dsỊwQ%eséĕmkỐoY;065', 1, CAST(N'2020-01-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (125, N'9xẾq;(eċM(eọp}^V8', N'10855570<244', N'9_o`Nî_DỔ?!GU-,!eẮlr-^oỄsK!_oãCoẞsK!.5)!Ỉt1', 0, CAST(N'2020-01-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (126, N'3r^ShỎzN%çQ5', N'30:5>1;4>066', N'2frgQñfGỗF$NX02$,U0lầĎ$løR$.7-7084', 1, CAST(N'2019-02-15 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (127, N'1hmbhHdỌhM!mỆxvfO1', N'8(5(4*1.6+11', N'8EE@0HV.`päDpÚVpấwI"$6ifởƨjH"$:ifã`VifảE"`eÙE5)1(5(32', 0, CAST(N'2019-08-13 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (128, N'4cq]kG#ék?#æO3', N'71:1<-8/9166', N'6bqcPðbFỖB#ịkj#bqÚkNqầxbQýbS/*4jhỠƪkJ#&ỼM#hĆP#äOE-2/5)7043', 1, CAST(N'2019-02-15 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (129, N'8tặ_iònH&í\6', N'8)4,3)3)<-33', N'8qốVè@($uặqC(fègP4_vƙƸ<(_vƙƸ`K4ØPofổN(1A8', 0, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (130, N'2aỔeUnlĊĎ''ûS7', N'7.<0<,8.?.66', N'51nẨuL ''hiịċ iâO ''nỀypgI iăQ iễtubNA41*7220', 0, CAST(N'2021-02-21 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (131, N'6pÜXjhkG"apƛƲ>"ïX2', N'5/6-7,608022', N'1gthSógIộG&+<tẬ{P&+60&ftỜƶgv2HO{gQ2ftó{K&mĉU&mịx{fT;276', 0, CAST(N'2020-01-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (132, N'6ổnH&çn=&hậlZ6', N'7*5,717+1011', N'9T:OG[3ñoG''eéK''#ƨ:''lÉ<(=7', 1, CAST(N'2020-08-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (133, N'7jgỠƩFqüYjgƤƩG3', N'6->29.:.>/66', N'5iijH!èi>!ỎIQO!''iií=!iãO!iẮpr-oâ>!pá=!boỘƱČ!441', 1, CAST(N'2020-08-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (134, N'3qêeYê?)dwẴę9', N'7+:+50;)9033', N'1gphOïgEổG"+8pẬwP"+20"fpỜƲgr.HKwgM.fpówK"mąU"mệxwfP7232', 1, CAST(N'2021-09-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (135, N'3zßm@%ò[ùdS5', N'8*6.8/9/7033', N'0PCK.ST#,knïB#nåT#nẰuT /44 jnỠưkP#,qeē jnỖĐ#82493', 0, CAST(N'2021-09-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (136, N'4jjkI"jąR"jệuwcP2', N'2.;.92;08644', N'2fogNîfDỔF!NU-3!lẮsr-eoịsR!foêCoấsR!550!ỏt1', 1, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (137, N'5ncYsẠzO%bsïHliåjM5', N'8.8.<080<-44', N'2RAM3NY1ømN%lçR%lẲsV1esịwR%fsêĕmlỐpY;175', 1, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (138, N'1gthR{ỮNúfT6', N'6.9-2*2,8-22', N'7aubTôaJỚA''%<uẦ|J''%<ngỤƩoI''%uÛ]o\Ẩ;''-;7', 0, CAST(N'2019-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (139, N'9i_Tgeăć eễpu^N0', N'8*8)8/;.=/66', N'1gqhPðgFỖG#+9qẬxP#+30#fqỜƳgs/HLxgN/fqóxK#mĆU#mỈxxfQ8243', 0, CAST(N'2020-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (140, N'4tểmD$él?$ỏL4', N'2/7.26149511', N'5minH%èm>%ỎMUO%''miñ=%içO%iẲpv1oæ>%på=%bsỘƵČ%485', 1, CAST(N'2021-03-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (141, N'5qÛrO#cqdPlôE3', N'34<09382A088', N'5M>H)PO ''0, iậpQ,-1giờƫhK ''hiạC iạQ ƫSB23*9/40', 1, CAST(N'2019-08-13 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (142, N'8`s9%lẲ`SnñG5', N'7,8/7.0)8.00', N'57tẨ{L&''niốċ&ièO&''tỀpmI&iĉQ&iịt{bTG47*8-86', 0, CAST(N'2021-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (143, N'6[iH"apijJ"hẩlV2', N'4271<-8/=155', N'5V>Q7K]5^Ỳċ)ỢqO)iẶpZ5ỈqO)cwçK7K)''}ẠqI)bwỌqO)+>9', 0, CAST(N'2020-01-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (144, N'3vẪIuẪiK!ỐI1', N'247465:07155', N'2fugTôfJỚF''ỏon''fuÞoRuẫ|fUāfW3.8nlỤƮoN''*ἀQ''lĊT''èSI1639-9/87', 1, CAST(N'2021-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (145, N'0hnƢưiK!ịiT!ũW1', N'30=0609/=055', N'2PAKsR#*6qẫxO#1#eqớƳfS/eqậkR#mdA#/2793', 1, CAST(N'2020-08-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (146, N'3vẾrPokċč(Ŧ^8', N'7-7/3-4+4111', N'3Q@L+TQ$)7rẪyN$)9kkỡƭlM$)rẤXrĀZùS$45,5/54', 0, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (147, N'6lhỷoUgôlJ$hẫlX4', N'4/62;.506455', N'88sấzI%$:&U1fẬL%fĈN%í[7*75', 1, CAST(N'2020-01-21 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (148, N'0ớiN!nẦuU hnõC!ỗđ1', N'8.90;+;+6044', N'4mổRäD$(qẻmG$jäkL0crƝƴ@$crƝƴdG0ÜLkjốR$/54', 1, CAST(N'2021-07-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (149, N'4njƷD''éo?''æS7', N'7*5*7+7)7,33', N'7avbUõaKớA(I\4.(gẵny4`vỆzM(avåJvẠzM(,:+(Ị{8', 1, CAST(N'2021-04-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (150, N'2mẤfUiljK!lẨpU1', N'8)909-:+;-33', N'6bvcUõbKớB(J\4.((Y4hẫĊ(hüN(,:);,:8', 0, CAST(N'2019-02-15 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (151, N'4wdVjjkI"cpƝƲ@"ťX2', N'50<14241=.44', N'3ewfVöeLỜE)M]51)+Z5kẬč)kýQ)/;,</;9', 0, CAST(N'2019-02-15 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (152, N'4pjỦƬL}ẩqJ)cwẳę9', N'42909,;1;/33', N'1grhQñgGỗG$Ốlo$grßlSrẬygRþgT0/5kmỡƯlO$+ỽR$mćU$éPF2346.8554', 1, CAST(N'2019-08-13 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (153, N'7gêO(î^ogèhP8', N'34214/:4;022', N'42R6L!aỐdLoÿWo]iL!05...5.!ƬdhjvdD1', 0, CAST(N'2020-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (154, N'8aágIifjE!ịI1', N'5+=,7,6-<266', N'74qẦxJ#%kgỎĉ#gåM#%qẾ|njG#gĆO#gỈrx`QD24(:053', 0, CAST(N'2021-06-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (155, N'1mỆhMhùmO%ỒM5', N'448/80629111', N'0RCM.UT%,6 sậzQ%,mnỐĐ%nçT%gsờƵhU 1nỊyzgS să[ sễ~ulN%2</7165', 0, CAST(N'2019-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (156, N'8pØqL"`paOö_P2', N'7,;0<.5*9144', N'36qẪxN#)8+S/kẪQ#kĆS#òY:453', 1, CAST(N'2020-12-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (157, N'8`oaMâ:!šW1', N'8+<*<);,=-55', N'8Q;L&TL$$5rấyI$$lfỏĈ$fæL$_rổƴ`T0fỉqy_RrûZrẽ}mkF$*;''6)54', 0, CAST(N'2021-03-11 10:14:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (158, N'6yầLùP$gấbT4', N'6.81?/=0?-88', N'7N<I''QM!%igí;!gãM!gẮnR--2hgỞƩiI!%o^đhgỔĉ!10-71', 1, CAST(N'2019-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (159, N'3kàlTcỊgK jạeP0', N'6,<0>+<*>-88', N'7O<J0IV.ójI"gäM"gắnS.`pỆtM"apåĒjgọkV8,42', 1, CAST(N'2019-02-15 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (160, N'6nbYúP%ï[5', N'2.8/54748322', N'7aubTôaJỚA''I[3-''''X3gẪĉ''gûM''):(:+;7', 0, CAST(N'2021-10-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (161, N'4jjỵqSeöjL"cpẳĒ2', N'429,=29-<166', N'4dveUõdKớD(L\4dvèJvÞ\vẩ}m((|ÝK}ÜJojụƬę>1<8', 1, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (162, N'3`þoXlkmJ$drƞƴA$ỔĔ4', N'8.6,4(4/5+00', N'7O<JrM"%5pẦwJ","`pỖƲaR.`pẨjM"hc<"*1+42', 0, CAST(N'2019-01-26 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (163, N'2lƦQ%aỒeSmlỸsM5', N'1/7022326722', N'3U@PM\4÷pM(kêQ()Ʃ@(rÊ=5>8', 1, CAST(N'2019-01-26 10:44:05.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (164, N'1fpøV÷U"üN2', N'1794?7=4=788', N'2fqgPðfFỖF#*8qẫxO#*8jlỠƮkN#*qàYkaẤ@#273', 1, CAST(N'2021-10-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (165, N'2et_{O&lẫsZo÷H6', N'5/;1@0?.8288', N'6M=HJT,ôhJ hâN &ơ= oÂ6/30', 1, CAST(N'2021-06-18 10:34:09.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (166, N'2ŭT$ỉlR$erẵĔ4', N'15729/71>455', N'6jhkG"çj="ọJRN"&jhî<"häN"hắos.nã="oâ<"apỗƲċ"*52', 1, CAST(N'2021-07-21 16:30:02.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (167, N'2olisYĂR(ŧ^8', N'3590A5<4B499', N'7N<I''QM!%2oẦvJ!%igỌĉ!gãM!`oỖƱaQ-gỆrv`OoüWoẾznhG!+8(3*21', 1, CAST(N'2019-02-15 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (168, N'6ihjF!ÛChhƢƪE1', N'177084266400', N'9Q:L%TK$#leð9$eæK$eằlU0+5keỡƧlG$#r\Ĕkeỗć$/3+94', 0, CAST(N'2021-06-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (169, N'1x[hỌlM%ỒM5', N'7)4.7,;*5,33', N'8rốWé@)$vặrC)fégQ5_wƙƹ<)_wƙƹ`L5ØQpfỖN)+:9', 0, CAST(N'2019-12-27 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (170, N'3jhK''mỎfKnkƨƭK7', N'9-9+3.2(2/11', N'8T;OH[3òoH''féL''$ƨ;''mÉ=1:7', 1, CAST(N'2020-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (171, N'1hỌlM%tỴG%fsẶĕ5', N'2.?2<0:39599', N'5U>P)XO('';vẨ}L(''=oiụƫpK(''vẢ\vþ^ýQ(29*9-:8', 0, CAST(N'2020-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (172, N'2fịjL#aỐeQjlƤƮG3', N'6-7+5.8.8-44', N'2llmK$ëlA$ốLTR$*llð@$læR$lằsu0råA$sä@$erớƴď$774', 0, CAST(N'2020-08-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (173, N'0iV pệiD õV0', N'07:4>6?8@588', N'1gphOïgEổG"OV.4"mắts.fpỌtS"gpëDpẦtS"241"Ốu2', 0, CAST(N'2020-09-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (174, N'9XiE"_p×jK"áN2', N'44718/446444', N'29tẫ{O&*;,V2lậR&lĉT&ó\8086', 0, CAST(N'2021-09-11 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (175, N'2jldsTýR#ốK3', N'077267318522', N'0MEH0PV .3"nắuS .5"gpờƲhR .nẩT"nąV"õX 91115132', 1, CAST(N'2020-11-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (176, N'0hoìC oấvT!ũW1', N'22<6:2609144', N'2fvgUõfKớF(N\43(lẵsy4evịzR(fvêJvấzR(/80(ỏ{8', 0, CAST(N'2021-04-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (177, N'1tçgHyẬmM%mẬqY5', N'52:28-60<033', N'5O>J)RO"''3pẨwL"''jiọċ"iäO"bpỘƲcR.iệtwbPpþXpỀ{piI"-9*4,42', 0, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (178, N'1månYhỐzP%mỊxzfS5', N'327070515544', N'6Q=L(TN$&lhấbXlhð<$hằoU0/$arỗƴbT0arệvN$bræFrạvN$;5+3,74', 1, CAST(N'2021-05-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (179, N'8aãgKwấkF#õO3', N'6*3,6+7.9-33', N'9_v`Uõ_Kớ?(G\4,(eẵly4^vỄzK(_vãJvẞzK(.<)(Ỉ{8', 0, CAST(N'2020-12-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (180, N'9^rƘƴ_Oấ?$eẫiX4', N'049548115811', N'47tẩ{M&(njốČ&jèP&(tềqmJ&jĉR&jịu{cTG57+=386', 1, CAST(N'2021-03-11 15:33:04.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (181, N'0vơ[ kúpP(mẩhX8', N'8*;.?0>08/88', N'4eỢJ)ÜQ5iỈeTwÜxD)(pjƪƬMpjƪƬq?)(éD)cwỉ_<.:9', 1, CAST(N'2020-12-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (182, N'2g^plqK(ổĘ8', N'21<6>/828588', N'7anbMíaCồA %5nẦuJ %5ggờƩhI %nÛVh\ạ; -40', 0, CAST(N'2019-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (183, N'0y}D(uỷH(gvặĘ8', N'80=0;*70<+77', N'2UAP6N\4øpN(lêR(lẵsY4evịzR(fvêĘplồp\>198', 1, CAST(N'2019-08-13 09:54:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (184, N'2euŧKāR''ŧ]7', N'4.;46.70;/33', N'8`paOï`Eổ@"$7pấwI"$7ifởƨjH"$pÚXj[ả:",62', 1, CAST(N'2021-02-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (185, N'6avƪPvý^üaV8', N'9+</6-;+>.66', N'2QAL2NX0/U0meI$_Ĕ2N$*ừfXrāZrể}skL$474', 1, CAST(N'2019-01-26 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (186, N'7oZSầA&ỐĖ6', N'62:1=0?.:-88', N'6bucTôbJỚB''J[3.''(X3hẪĊ''hûN'',9):,97', 0, CAST(N'2021-01-18 17:30:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (187, N'5kiỎcWỎcWjiƤƫG3', N'14A4=0;3:799', N'9oỐTæ?&#sẶoB&eæfN2^tƘƶ;&^tƘƶ_I2×NmeồM&0?6', 1, CAST(N'2021-04-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (188, N'9{lFrẾk;"ỊJ2', N'25;174:2@577', N'1gnhMígCồG +5nẬuP +5gmờƯhO +náVhbạA 340', 1, CAST(N'2019-10-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (189, N'8vếo@&ÙHú_T6', N'7,5-9030:.11', N'39tẪ{N&);+V2kậQ&kĉS&ò\8/86', 1, CAST(N'2019-12-27 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (190, N'8ØJeòjH"eả`R2', N'628*>-:,9277', N'2ftgSófIộF&*;tẫ{O&*;mlợƮnN&*tà\naầ@&296', 0, CAST(N'2020-05-21 16:19:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (191, N'8mf{`TiònH&í\6', N'43535,1/7311', N'0RCM 3PY 1cỮĐ%ủmT%nẲuV 1ọmT%hsìG 3P%,yấmN%gsốmT%3:5', 0, CAST(N'2020-03-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (192, N'8pếi< _nghH õL0', N'706-61;09144', N'1oỘTæG&+sẾoJ&mænN2ftƠƶC&ftƠƶgI2ßNmmồU&276', 0, CAST(N'2021-07-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (193, N'3eoéCd÷iM!kẨoU1', N'04:6<4=0=355', N'7ogpF''æo<''ỌOWM''%ogó;''géM''gẴnx3mè<''nç;''`uỖƷĊ''2:7', 0, CAST(N'2021-06-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (194, N'5tẼoC&ÜHúbT6', N'7*8)=,>1:,66', N'6T=OwN''&:uầ|K''-''auỗƷbW3auẩoN''ih=''+63@7', 0, CAST(N'2019-07-21 10:20:07.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (195, N'2uẟđdịhL!ûM1', N'3.95>180=477', N'1TBO-WS''+70''mẴtX318nmỤƯoO''+omẨG''mẨU''ƯZI6:.@397', 1, CAST(N'2021-01-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (196, N'2lƩQ(rẵfVüeV8', N'071117935811', N'2fvgUõfKớF(ỏpn(fvÞpRvẫ}fVĂfX4.9olụƮpN(*ἁQ(lċT(èTJ173:-</98', 1, CAST(N'2019-06-21 09:21:01.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (197, N'8YmF&[ỗmWú_T6', N'23;1=5?5B599', N'9jekD"äj:"ỊJRK"#jeî9"eäK"eắls.kã:"lâ9"^pỔƲĈ"''52', 0, CAST(N'2020-01-21 09:34:06.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (198, N'4ùyM$crklL$iấdT4', N'8-9+<-</6055', N'2fvgUõfKớF(*>vẫ}O(*8/(evớƸfx4GQ}fS4evò}J(lċT(lọw}eV<498', 1, CAST(N'2021-06-18 11:44:08.000' AS DateTime))
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (199, N'3ỘmK%mỌfIlkƦƭI5', N'617.912*:/22', N'3U@P6M\4evẞpQ(evéJvẪ}N()>/(+X4kIvĀ^}eK<ộP(dvỚƸč(.K3:8', 1, CAST(N'2020-05-21 16:19:08.000' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([maKH], [hoTen], [soDT], [diaChi], [gioiTinh], [ngayThem]) VALUES (200, N'1gphNimąď"ỖĒ2', N'7+5.0.516,00', N'6bvcUõbKớB(&=vầ}K(&=ohụƪpJ(&vÜ^p]ẩ<(.=8', 0, CAST(N'2019-08-13 10:14:01.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100011', 0, N'5õUo\vL!hẢcQ1', N'4-8.1/4-9/00', N'30317/24;-;422', N'71nẦuJ %hgịĉ gâM %nẾyngG găO gễru`NA21(2+20', 1, CAST(N'2021-10-25 18:57:12.943' AS DateTime), 1, 0, NULL)
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100020', 1, N'1|àpO(mċU(mọx}fV8', N'8/906-60<+66', N'5/31:222;+;222', N'8Q;L&TL$$4)$fằmU0*5kfỡƨlH$$lfấ@$fấN$ƨWF/7''7+64', 1, CAST(N'2021-10-25 18:57:12.943' AS DateTime), 0, 0, N'21100011')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100030', 0, N'5ypHhiiH bnƜư? iễtubN0', N'407-<45,:455', N'3.<2;/84A-A488', N'9oepD''äo:''ỊOWK''#oeó9''eéK''eẴlx3kè:''lç9''^uỔƷĈ'''':7', 1, CAST(N'2021-10-25 18:57:12.943' AS DateTime), 0, 0, N'21100011')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100040', 1, N'2xẽlF#ëkA#lỈwxeQ3', N'404.41808/33', N'41;.9083A,A388', N'7U<P''XM(%pgô;(gêM(gẵnY4-9ogụƩpI(%v^Ęogớĉ(17-=8', 1, CAST(N'2021-10-25 18:57:12.947' AS DateTime), 0, 0, N'21100011')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100050', 0, N'4jæqXgỉkJ$jỉuycR4', N'4.825.8,:122', N'1770=856>/>655', N'3U@P+XQ()8.(kẵrY4/9okụƭpM()pkẩE(kẩS(ƭ[J4;,A1<8', 1, CAST(N'2021-10-25 18:57:12.947' AS DateTime), 0, 0, N'21100011')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100061', 1, N'5csdQhỈlI%iỊtzbS5', N'3-6353244500', N'3/7210049-9400', N'4M?H*PP (0- jậqQ,.1gjờƬhL (hjạD jạR ƬSB33+9020', 0, CAST(N'2021-10-25 18:57:12.947' AS DateTime), 1, 0, NULL)
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100070', 1, N'6[rB#ƪkH#ễkN#hỈsxaQ3', N'7,;-<-<1:155', N'6.>/8-71@*@177', N'1gqhPðgFỖG#OW/3#-T/mẦď#m÷S#/6.6353', 0, CAST(N'2021-10-25 18:57:12.947' AS DateTime), 0, 0, N'21100061')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100080', 0, N'7nỈbRóoM''fẨaW7', N'6*:26*4+<133', N'7.;07*30<)<033', N'44qẩxM#(kjỎČ#jåP#(qề|qjJ#jĆR#jỈuxcQD54+5.53', 0, CAST(N'2021-10-25 18:57:12.947' AS DateTime), 0, 0, N'21100061')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100090', 0, N'7wÛ_óqM)ãU9', N'51;-6090>.55', N'5,:26.12:+:211', N'1NBI/OU-ùiO!mãS!mẮtR-foỌsS!goëđimỌqU7221', 0, CAST(N'2021-10-25 18:57:12.950' AS DateTime), 0, 0, N'21100061')
INSERT [dbo].[NhanVien] ([maNhanVien], [maCaLamViec], [hoTen], [soDT], [soCMND], [diaChi], [gioiTinh], [ngayVaoLam], [capBac], [trangThaiLamViec], [maNguoiQuanLiThemVao]) VALUES (N'21100100', 1, N'3~ẪQjlQxÝę9', N'5.<2;,8+@077', N'7+?2>,90B)B099', N'0PCKPW /úkP#nåT#,ƤC#uÅ 9963', 0, CAST(N'2021-10-25 18:57:12.950' AS DateTime), 0, 0, N'21100061')
SET IDENTITY_INSERT [dbo].[NhatKiBanHangTheoCa] ON 

INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (1, N'21100020', CAST(N'2021-11-12 16:00:00.000' AS DateTime), 5, 500, 100, 1500000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (2, N'21100030', CAST(N'2021-11-12 22:00:00.000' AS DateTime), 10, 490, 0, 5000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (3, N'21100040', CAST(N'2021-11-13 16:00:00.000' AS DateTime), 6, 484, 200, 2000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (4, N'21100050', CAST(N'2021-11-13 22:00:00.000' AS DateTime), 15, 469, 200, 10000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (5, N'21100070', CAST(N'2021-11-14 16:00:00.000' AS DateTime), 5, 464, 0, 3000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (6, N'21100080', CAST(N'2021-11-14 22:00:00.000' AS DateTime), 20, 444, 200, 20000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (7, N'21100100', CAST(N'2021-11-15 16:00:00.000' AS DateTime), 0, 444, 200, 0.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (8, N'21100090', CAST(N'2021-11-15 22:00:00.000' AS DateTime), 20, 424, 0, 15000000.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (9, N'21100020', CAST(N'2021-11-16 16:00:00.000' AS DateTime), 0, 424, 200, 0.0000)
INSERT [dbo].[NhatKiBanHangTheoCa] ([maNKBHTC], [maNhanVienLapNKBHTC], [thoiGianLap], [tongSLSPBanDuoc], [tongSLSPConLai], [tongSLSPMoiNhap], [tongDoanhThu]) VALUES (10, N'21100030', CAST(N'2021-11-16 22:00:00.000' AS DateTime), 15, 409, 200, 25000000.0000)
SET IDENTITY_INSERT [dbo].[NhatKiBanHangTheoCa] OFF
SET IDENTITY_INSERT [dbo].[PhieuDoiChung] ON 

INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (1, N'21100020', N'21100030', CAST(N'2021-11-12 16:05:00.000' AS DateTime), 20000000.0000, 21500000.0000, 21500000.0000, 21500000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (2, N'21100030', N'21100011', CAST(N'2021-11-12 22:05:00.000' AS DateTime), 21500000.0000, 26500000.0000, 26500000.0000, 26500000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (3, N'21100040', N'21100050', CAST(N'2021-11-13 16:05:00.000' AS DateTime), 20000000.0000, 22000000.0000, 22000000.0000, 22000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (4, N'21100050', N'21100011', CAST(N'2021-11-13 22:05:00.000' AS DateTime), 22000000.0000, 32000000.0000, 32000000.0000, 32000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (5, N'21100070', N'21100080', CAST(N'2021-11-14 16:05:00.000' AS DateTime), 20000000.0000, 23000000.0000, 23000000.0000, 23000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (6, N'21100080', N'21100011', CAST(N'2021-11-14 22:05:00.000' AS DateTime), 23000000.0000, 43000000.0000, 43000000.0000, 43000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (7, N'21100100', N'21100090', CAST(N'2021-11-15 16:05:00.000' AS DateTime), 20000000.0000, 20000000.0000, 20000000.0000, 20000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (8, N'21100090', N'21100011', CAST(N'2021-11-15 22:05:00.000' AS DateTime), 20000000.0000, 35000000.0000, 35000000.0000, 35000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (9, N'21100020', N'21100030', CAST(N'2021-11-16 16:05:00.000' AS DateTime), 20000000.0000, 20000000.0000, 20000000.0000, 20000000.0000)
INSERT [dbo].[PhieuDoiChung] ([maPhieuDoiChung], [maNhanVienLapPhieu], [maNhanVienKiemPhieu], [thoiGianLapPhieu], [soTienBanDau], [soTienTrongKetHeThongTinh], [soTienNguoiGiaoCaTinh], [soTienNguoiNhanCaTinh]) VALUES (10, N'21100030', N'21100011', CAST(N'2021-11-16 00:00:00.000' AS DateTime), 20000000.0000, 45000000.0000, 45000000.0000, 45000000.0000)
SET IDENTITY_INSERT [dbo].[PhieuDoiChung] OFF
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000001', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Xanh Đen, S', N'Xanh Đen', N'S', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 20, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000002', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Xanh Đen, M', N'Xanh Đen', N'M', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 25, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000003', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Xanh Đen, L', N'Xanh Đen', N'L', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 30, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000004', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Trắng, S', N'Trắng', N'S', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 20, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000005', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Trắng, M', N'Trắng', N'M', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 25, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000006', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Trắng, L', N'Trắng', N'L', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 30, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000007', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Đen, S', N'Đen', N'S', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 20, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000008', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Đen, M', N'Đen', N'M', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 25, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000009', N'Áo Thun Dáng Rộng Cổ Tròn Ngắn Tay, Đen, L', N'Đen', N'L', N'Vải Jersey', 399000.0000, N'Uniqlo', N'Paris', 30, N'Áo thun khổ lớn sẽ mang đến cho bạn cảm giác phấn khởi hơn. Phong cách tinh tế nhưng vẫn toát lên nét thường ngày')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000010', N'Áo Len Cổ V Dài Tay, Xám, S', N'Xám', N'S', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 32, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000011', N'Áo Len Cổ V Dài Tay, Xám, M', N'Xám', N'M', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 25, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000012', N'Áo Len Cổ V Dài Tay, Xám, L', N'Xám', N'L', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 20, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000013', N'Áo Len Cổ V Dài Tay, Xám, XL', N'Xám', N'XL', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 20, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000014', N'Áo Len Cổ V Dài Tay, Đỏ, S', N'Đỏ', N'S', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 30, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000015', N'Áo Len Cổ V Dài Tay, Đỏ, M', N'Đỏ', N'M', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 25, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000016', N'Áo Len Cổ V Dài Tay, Đỏ, L', N'Đỏ', N'L', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 20, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000017', N'Áo Len Cổ V Dài Tay, Đỏ, XL', N'Đỏ', N'XL', N'Len Merino', 799000.0000, N'Uniqlo', N'Úc', 20, N'Chất liệu 100% len Merino cao cấp mang lại cảm giác mượt mà.Áo có độ ôm vừa vặn mang lại cảm giác ấm áp cho mùa đông')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000018', N'Áo Polo H&M, Đen, S', N'Đen', N'S', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 50, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu đen nam tính dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000019', N'Áo Polo H&M, Đen, M', N'Đen', N'M', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 40, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu đen nam tính dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000020', N'Áo Polo H&M, Đen, L', N'Đen', N'L', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 50, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu đen nam tính dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000021', N'Áo Polo H&M, Trắng, S', N'Trắng', N'S', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 50, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu trắng tao nhã dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000022', N'Áo Polo H&M, Trắng, M', N'Trắng', N'M', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 40, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu trắng tao nhã dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000023', N'Áo Polo H&M, Trắng, L', N'Trắng', N'L', N'Vải Cotton', 220000.0000, N'H&M', N'Thụy Điển', 40, N'Áo nam Polo 100% cotton thấm hút mồ hôi, thoáng mát, mang lại cảm giác nhẹ nhàng khi mặc. Màu trắng tao nhã dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000024', N'Quần Harem, Đen, S', N'Đen', N'S', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 30, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000025', N'Quần Harem, Đen, M', N'Đen', N'M', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 20, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000026', N'Quần Harem, Đen, L', N'Đen', N'L', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 20, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000027', N'Quần Harem, Đen, XL', N'Đen', N'XL', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 20, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000028', N'Quần Harem, Xám, S', N'Xám', N'S', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 25, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000029', N'Quần Harem, Xám, M', N'Xám', N'M', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 25, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000030', N'Quần Harem, Xám, L', N'Xám', N'L', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 20, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000031', N'Quần Harem, Xám, XL', N'Xám', N'XL', N'Umi', 263000.0000, N'Coral', N'Việt Nam', 25, N'Quần Harem được biến hóa khéo léo từ quần thể thao với rất nhiều phong cách đa dạng và đang dần trở thành một xu hướng mới trong làng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000032', N'Quần Jean Nam, Xanh, S', N'Xanh', N'S', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 22, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000033', N'Quần Jean Nam, Xanh, M', N'Xanh', N'M', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 25, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000034', N'Quần Jean Nam, Xanh, L', N'Xanh', N'L', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 20, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000035', N'Quần Jean Nam, Xanh, XL', N'Xanh', N'XL', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 20, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000036', N'Quần Jean Nam, Xanh Đen, S', N'Xanh Đen', N'S', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 26, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000037', N'Quần Jean Nam, Xanh Đen, M', N'Xanh Đen', N'M', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 22, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000038', N'Quần Jean Nam, Xanh Đen, L', N'Xanh Đen', N'L', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 20, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000039', N'Quần Jean Nam, Xanh Đen, XL', N'Xanh Đen', N'XL', N'Jean', 350000.0000, N'H&M', N'Thụy Điển', 25, N'Quần jean thiết kế form slim fit, co giãn thoải mái, dễ mix match với áo thun, sơ mi, polo')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000040', N'Áo Hoodie, Trắng Xám, S', N'Trắng Xám', N'S', N'Vải Nỉ', 350000.0000, N'Pull&Bear', N'Singapore', 20, N'Áo hoodie trắng xám với họa tiết đơn giản, phù hợp với nhiều phong cách')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000041', N'Áo Hoodie, Trắng Xám, M', N'Trắng Xám', N'M', N'Vải Nỉ', 350000.0000, N'Pull&Bear', N'Singapore', 25, N'Áo hoodie trắng xám với họa tiết đơn giản, phù hợp với nhiều phong cách')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000042', N'Áo Hoodie, Trắng Xám, L', N'Trắng Xám', N'L', N'Vải Nỉ', 350000.0000, N'Pull&Bear', N'Singapore', 25, N'Áo hoodie trắng xám với họa tiết đơn giản, phù hợp với nhiều phong cách')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000043', N'Áo Sơ Mi Ngắn Tay, Trắng, S', N'Trắng', N'S', N'Microfiber', 400000.0000, N'OWEN', N'Việt Nam', 40, N'Áo sơ mi ngắn tay kiểu dáng Body Fit tôn dáng cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000044', N'Áo Sơ Mi Ngắn Tay, Trắng, M', N'Trắng', N'M', N'Microfiber', 400000.0000, N'OWEN', N'Việt Nam', 40, N'Áo sơ mi ngắn tay kiểu dáng Body Fit tôn dáng cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000045', N'Áo Sơ Mi Ngắn Tay, Trắng, L', N'Trắng', N'L', N'Microfiber', 400000.0000, N'OWEN', N'Việt Nam', 40, N'Áo sơ mi ngắn tay kiểu dáng Body Fit tôn dáng cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000046', N'Quần Short, Xanh, S', N'Xanh', N'S', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 25, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000047', N'Quần Short, Xanh, M', N'Xanh', N'M', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 25, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000048', N'Quần Short, Xanh, L', N'Xanh', N'L', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 25, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000049', N'Quần Short, Xanh, XL', N'Xanh', N'XL', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 25, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000050', N'Quần Short, Trắng, S', N'Trắng', N'S', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 22, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000051', N'Quần Short, Trắng, M', N'Trắng', N'M', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 22, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000052', N'Quần Short, Trắng, L', N'Trắng', N'L', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 22, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000053', N'Quần Short, Trắng, XL', N'Trắng', N'XL', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 22, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000054', N'Quần Short, Be, S', N'Be', N'S', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 20, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000055', N'Quần Short, Be, M', N'Be', N'M', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 20, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000056', N'Quần Short, Be, L', N'Be', N'L', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 20, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000057', N'Quần Short, Be, XL', N'Be', N'XL', N'Vải Cotton', 395000.0000, N'OWEN', N'Việt Nam', 20, N'Quần Short kiểu dáng trẻ trung, năng động. Chất liệu vải nhẹ, thấm hút mồ hôi tốt')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000058', N'Áo Demi, Xanh, XL', N'Xanh', N'XL', N'Polyester, Rayon', 750000.0000, N'OWEN', N'Việt Nam', 30, N'Thiết kế trẻ trung với ve cổ áo mảnh cùng kiểu dáng Regular dễ mặc, dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000059', N'Áo Demi, Xanh Đen, XL', N'Xanh Đen', N'XL', N'Polyester, Rayon', 750000.0000, N'OWEN', N'Việt Nam', 30, N'Thiết kế trẻ trung với ve cổ áo mảnh cùng kiểu dáng Regular dễ mặc, dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000060', N'Áo Demi, Xám, XL', N'Xám', N'XL', N'Polyester, Rayon', 750000.0000, N'OWEN', N'Việt Nam', 30, N'Thiết kế trẻ trung với ve cổ áo mảnh cùng kiểu dáng Regular dễ mặc, dễ phối đồ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000061', N'Sơ Mi Việt Tiến, Trắng, S', N'Trắng', N'S', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 40, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000062', N'Sơ Mi Việt Tiến, Trắng, M', N'Trắng', N'M', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 40, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000063', N'Sơ Mi Việt Tiến, Trắng, L', N'Trắng', N'L', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 40, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000064', N'Sơ Mi Việt Tiến, Trắng, XL', N'Trắng', N'XL', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 40, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000065', N'Sơ Mi Việt Tiến, Xanh, S', N'Xanh', N'S', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 30, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000066', N'Sơ Mi Việt Tiến, Xanh, M', N'Xanh', N'M', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 30, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000067', N'Sơ Mi Việt Tiến, Xanh, L', N'Xanh', N'L', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 30, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000068', N'Sơ Mi Việt Tiến, Xanh, XL', N'Xanh', N'XL', N'Polyester, Cotton', 290000.0000, N'Việt Tiến', N'Việt Nam', 30, N'Áo sơ mi tay ngắn luôn là sự lựa chọn phù hợp cho công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000069', N'Nón N2021, Trắng, L', N'Trắng', N'L', N'Polyester', 180000.0000, N'PT2000', N'Việt Nam', 25, N'Nón N2021 có màu sắc trẻ trung, năng động phù hợp với mọi xu hướng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000070', N'Nón N2021, Trắng, XL', N'Trắng', N'XL', N'Polyester', 180000.0000, N'PT2000', N'Việt Nam', 25, N'Nón N2021 có màu sắc trẻ trung, năng động phù hợp với mọi xu hướng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000071', N'Nón N2021, Đen, L', N'Đen', N'L', N'Polyester', 180000.0000, N'PT2000', N'Việt Nam', 25, N'Nón N2021 có màu sắc trẻ trung, năng động phù hợp với mọi xu hướng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000072', N'Nón N2021, Đen, XL', N'Đen', N'XL', N'Polyester', 180000.0000, N'PT2000', N'Việt Nam', 25, N'Nón N2021 có màu sắc trẻ trung, năng động phù hợp với mọi xu hướng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000073', N'Nón N2021, Đỏ, L', N'Đỏ', N'L', N'Polyester', 180000.0000, N'PT2000', N'Việt Nam', 15, N'Nón N2021 có màu sắc trẻ trung, năng động phù hợp với mọi xu hướng thời trang')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000074', N'Cà Vạt Công Sở, Xanh, Freesize', N'Xanh', N'Freesize', N'Polyester', 250000.0000, N'PT2000', N'Việt Nam', 25, N'Cà vạt công sở với kích cỡ phù hợp với mọi độ tuổi, tạo cảm giác chững trạc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000075', N'Cà Vạt Công Sở, Xanh Biển, Freesize', N'Xanh Biển', N'Freesize', N'Polyester', 250000.0000, N'PT2000', N'Việt Nam', 25, N'Cà vạt công sở với kích cỡ phù hợp với mọi độ tuổi, tạo cảm giác chững trạc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000076', N'Cà Vạt Công Sở, Đen, Freesize', N'Đen', N'Freesize', N'Polyester', 250000.0000, N'PT2000', N'Việt Nam', 25, N'Cà vạt công sở với kích cỡ phù hợp với mọi độ tuổi, tạo cảm giác chững trạc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000077', N'Cà Vạt Công Sở, Đỏ, Freesize', N'Đỏ', N'Freesize', N'Polyester', 250000.0000, N'PT2000', N'Việt Nam', 25, N'Cà vạt công sở với kích cỡ phù hợp với mọi độ tuổi, tạo cảm giác chững trạc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000078', N'Túi Xách Bông Hoa, Xanh, Freesize', N'Xanh', N'Freesize', N'Polyester, Tricot, Simili', 480000.0000, N'PT2000', N'Việt Nam', 25, N'Túi xách với hoa văn bông hoa phù hợp với không khí xuân về')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000079', N'Túi Xách Bông Hoa, Xanh Trắng, Freesize', N'Xanh Trắng', N'Freesize', N'Polyester, Tricot, Simili', 480000.0000, N'PT2000', N'Việt Nam', 25, N'Túi xách với hoa văn bông hoa phù hợp với không khí xuân về')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000080', N'Túi Xách Bông Hoa, Hồng, Freesize', N'Hồng', N'Freesize', N'Polyester, Tricot, Simili', 480000.0000, N'PT2000', N'Việt Nam', 25, N'Túi xách với hoa văn bông hoa phù hợp với không khí xuân về')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000081', N'Túi Xách Bông Hoa, Hồng Tím, Freesize', N'Hồng Tím', N'Freesize', N'Polyester, Tricot, Simili', 480000.0000, N'PT2000', N'Việt Nam', 25, N'Túi xách với hoa văn bông hoa phù hợp với không khí xuân về')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000082', N'Túi Xách Nữ Quai Lụa, Trắng, Freesize', N'Trắng', N'Freesize', N'Polyester, Tricot, Simili', 289000.0000, N'HAPAS', N'Việt Nam', 20, N'Túi xách quai trơn tạo cảm giác thanh lịch, nữ tính cho người dùng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000083', N'Túi Xách Nữ Quai Lụa, Trắng Hồng, Freesize', N'Trắng Hồng', N'Freesize', N'Polyester, Tricot, Simili', 289000.0000, N'HAPAS', N'Việt Nam', 20, N'Túi xách quai trơn tạo cảm giác thanh lịch, nữ tính cho người dùng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000084', N'Túi Xách Nữ Quai Lụa, Hồng, Freesize', N'Hồng', N'Freesize', N'Polyester, Tricot, Simili', 289000.0000, N'HAPAS', N'Việt Nam', 20, N'Túi xách quai trơn tạo cảm giác thanh lịch, nữ tính cho người dùng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000085', N'Đầm nữ 2 dây, Trắng, S', N'Hồng', N'S', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000086', N'Đầm nữ 2 dây, Trắng, M', N'Hồng', N'M', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000087', N'Đầm nữ 2 dây, Trắng, L', N'Hồng', N'L', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000088', N'Đầm nữ 2 dây, Vàng, S', N'Vàng', N'S', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000089', N'Đầm nữ 2 dây, Vàng, M', N'Vàng', N'M', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000090', N'Đầm nữ 2 dây, Vàng, L', N'Vàng', N'L', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000091', N'Đầm nữ 2 dây, Xanh Biển, S', N'Xanh Biển', N'S', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000092', N'Đầm nữ 2 dây, Xanh Biển, M', N'Xanh Biển', N'M', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000093', N'Đầm nữ 2 dây, Xanh Biển, L', N'Xanh Biển', N'L', N'Polyester', 499000.0000, N'Ninomaxx', N'Việt Nam', 25, N'Đầm nữ 2 dây trắng là xu hướng thời trang mới cho chị em')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000094', N'Váy Maxi, Đỏ, S', N'Đỏ', N'S', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000095', N'Váy Maxi, Đỏ, M', N'Đỏ', N'M', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000096', N'Váy Maxi, Đỏ, L', N'Đỏ', N'L', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000097', N'Váy Maxi, Xanh Đen, S', N'Xanh Đen', N'S', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000098', N'Váy Maxi, Xanh Đen, M', N'Xanh Đen', N'M', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000099', N'Váy Maxi, Xanh Đen, L', N'Xanh Đen', N'L', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000100', N'Váy Maxi, Vàng Cam, S', N'Vàng Cam', N'S', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
GO
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000101', N'Váy Maxi, Vàng Cam, M', N'Vàng Cam', N'M', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000102', N'Váy Maxi, Vàng Cam, L', N'Vàng Cam', N'L', N'Polyester', 699000.0000, N'Ninomaxx', N'Việt Nam', 22, N'Váy Maxi tạo sự rộng rãi, thoải mái cho người mặc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000103', N'Áo sơ mi nữ tay dài, Vàng, S', N'Vàng', N'S', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 30, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000104', N'Áo sơ mi nữ tay dài, Vàng, M', N'Vàng', N'M', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 25, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000105', N'Áo sơ mi nữ tay dài, Vàng, L', N'Vàng', N'L', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 20, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000106', N'Áo sơ mi nữ tay dài, Trắng, S', N'Trắng', N'S', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 30, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000107', N'Áo sơ mi nữ tay dài, Trắng, M', N'Trắng', N'M', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 25, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000108', N'Áo sơ mi nữ tay dài, Trắng, L', N'Trắng', N'L', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 20, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000109', N'Áo sơ mi nữ tay dài, Xanh Nhạt, S', N'Xanh Nhạt', N'S', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 30, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000110', N'Áo sơ mi nữ tay dài, Xanh Nhạt, M', N'Xanh Nhạt', N'M', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 25, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000111', N'Áo sơ mi nữ tay dài, Xanh Nhạt, L', N'Xanh Nhạt', N'L', N'Vãi Đũi', 359000.0000, N'Yody', N'Việt Nam', 20, N'Chất liệu thoáng mát, form dáng cơ bản, trẻ trung')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000112', N'Áo sơ mi nữ caro, Đỏ Đen, S', N'Đỏ Đen', N'S', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000113', N'Áo sơ mi nữ caro, Đỏ Đen, M', N'Đỏ Đen', N'M', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000114', N'Áo sơ mi nữ caro, Đỏ Đen, L', N'Đỏ Đen', N'L', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000115', N'Áo sơ mi nữ caro, Xanh Trắng, S', N'Xanh Trắng', N'S', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000116', N'Áo sơ mi nữ caro, Xanh Trắng, M', N'Xanh Trắng', N'M', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000117', N'Áo sơ mi nữ caro, Xanh Trắng, L', N'Xanh Trắng', N'L', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000118', N'Áo sơ mi nữ caro, Xanh Đen, S', N'Xanh Đen', N'S', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000119', N'Áo sơ mi nữ caro, Xanh Đen, M', N'Xanh Đen', N'M', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000120', N'Áo sơ mi nữ caro, Xanh Đen, L', N'Xanh Đen', N'L', N'Vãi Flannel', 369000.0000, N'Yody', N'Việt Nam', 20, N'Áo caro thiết kế trẻ trung thích hợp cho mùa xuân')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000121', N'Quần Kaki nam ống đứng, Vàng Nhạt, S', N'Vàng Nhạt', N'S', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 20, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000122', N'Quần Kaki nam ống đứng, Vàng Nhạt, M', N'Vàng Nhạt', N'M', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000123', N'Quần Kaki nam ống đứng, Vàng Nhạt, L', N'Vàng Nhạt', N'L', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000124', N'Quần Kaki nam ống đứng, Tím Than, S', N'Tím Than', N'S', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 20, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000125', N'Quần Kaki nam ống đứng, Tím Than, M', N'Tím Than', N'M', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000126', N'Quần Kaki nam ống đứng, Tím Than, L', N'Tím Than', N'L', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000127', N'Quần Kaki nam ống đứng, Đen, S', N'Đen', N'S', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 20, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000128', N'Quần Kaki nam ống đứng, Đen, M', N'Đen', N'M', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000129', N'Quần Kaki nam ống đứng, Đen, L', N'Đen', N'L', N'Vãi Kaki', 459000.0000, N'Yody', N'Việt Nam', 25, N'Quần Kaki co giãn 4 chiều, thích hợp cho những ngày năng động')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000130', N'Áo khoác gió nam có mũ, Xanh Biển, S', N'Xanh Biển', N'S', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000131', N'Áo khoác gió nam có mũ, Xanh Biển, M', N'Xanh Biển', N'M', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000132', N'Áo khoác gió nam có mũ, Xanh Biển, L', N'Xanh Biển', N'L', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000133', N'Áo khoác gió nam có mũ, Xanh Biển, XL', N'Xanh Biển', N'XL', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 20, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000134', N'Áo khoác gió nam có mũ, Tím Than, S', N'Tím Than', N'S', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000135', N'Áo khoác gió nam có mũ, Tím Than, M', N'Tím Than', N'M', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000136', N'Áo khoác gió nam có mũ, Tím Than, L', N'Tím Than', N'L', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000137', N'Áo khoác gió nam có mũ, Tím Than, XL', N'Tím Than', N'XL', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 20, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000138', N'Áo khoác gió nam có mũ, Ghi, S', N'Ghi', N'S', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000139', N'Áo khoác gió nam có mũ, Ghi, M', N'Ghi', N'M', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000140', N'Áo khoác gió nam có mũ, Ghi, L', N'Ghi', N'L', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 30, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000141', N'Áo khoác gió nam có mũ, Ghi, XL', N'Ghi', N'XL', N'Polyester', 499000.0000, N'Yody', N'Việt Nam', 20, N'Áo khoác gió mềm, nhẹ thích hợp cho những ngày mưa ẩm')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000142', N'Váy chân dập ly đắp, Xanh Dương, S', N'Xanh Dương', N'S', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000143', N'Váy chân dập ly đắp, Xanh Dương, M', N'Xanh Dương', N'M', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000144', N'Váy chân dập ly đắp, Xanh Dương, L', N'Xanh Dương', N'L', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000145', N'Váy chân dập ly đắp, Đen, S', N'Đen', N'S', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000146', N'Váy chân dập ly đắp, Đen, M', N'Đen', N'M', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000147', N'Váy chân dập ly đắp, Đen, L', N'Đen', N'L', N'Lụa', 599000.0000, N'HNOSS', N'Việt Nam', 25, N'Trang phục dạo phố, tiệc, công sở')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000148', N'Classic Tweed, Kẻ Gold, S', N'Kẻ Gold', N'S', N'Vải Tweed', 1672000.0000, N'IVYmoda', N'Việt Nam', 20, N'Vải tweed cổ điển luôn là hiện thân của nét thanh lịch kín đáo và kiêu sa')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000149', N'Classic Tweed, Kẻ Gold, M', N'Kẻ Gold', N'M', N'Vải Tweed', 1672000.0000, N'IVYmoda', N'Việt Nam', 20, N'Vải tweed cổ điển luôn là hiện thân của nét thanh lịch kín đáo và kiêu sa')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000150', N'Classic Tweed, Kẻ Gold, L', N'Kẻ Gold', N'L', N'Vải Tweed', 1672000.0000, N'IVYmoda', N'Việt Nam', 20, N'Vải tweed cổ điển luôn là hiện thân của nét thanh lịch kín đáo và kiêu sa')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000151', N'Classic Tweed, Kẻ Gold, XL', N'Kẻ Gold', N'XL', N'Vải Tweed', 1672000.0000, N'IVYmoda', N'Việt Nam', 20, N'Vải tweed cổ điển luôn là hiện thân của nét thanh lịch kín đáo và kiêu sa')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000152', N'Tweed Jacket, Kẻ Đen, S', N'Kẻ Đen', N'S', N'Vải Tweed', 1752000.0000, N'IVYmoda', N'Việt Nam', 20, N'Độ dài ngang mông, dáng vẻ trẻ trung thích hợp cho tuýp người cá tính')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000153', N'Tweed Jacket, Kẻ Đen, M', N'Kẻ Đen', N'M', N'Vải Tweed', 1752000.0000, N'IVYmoda', N'Việt Nam', 20, N'Độ dài ngang mông, dáng vẻ trẻ trung thích hợp cho tuýp người cá tính')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000154', N'Tweed Jacket, Kẻ Đen, L', N'Kẻ Đen', N'L', N'Vải Tweed', 1752000.0000, N'IVYmoda', N'Việt Nam', 20, N'Độ dài ngang mông, dáng vẻ trẻ trung thích hợp cho tuýp người cá tính')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000155', N'Tweed Jacket, Kẻ Đen, XL', N'Kẻ Đen', N'XL', N'Vải Tweed', 1752000.0000, N'IVYmoda', N'Việt Nam', 20, N'Độ dài ngang mông, dáng vẻ trẻ trung thích hợp cho tuýp người cá tính')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000156', N'Đầm ren phối lưới, Trắng, S', N'Trắng', N'S', N'Vải Ren', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng xòe cũng khiến cho người mặc hút hồn biết bao ánh mắt xung quanh')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000157', N'Đầm ren phối lưới, Trắng, M', N'Trắng', N'M', N'Vải Ren', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng xòe cũng khiến cho người mặc hút hồn biết bao ánh mắt xung quanh')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000158', N'Đầm ren phối lưới, Trắng, L', N'Trắng', N'L', N'Vải Ren', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng xòe cũng khiến cho người mặc hút hồn biết bao ánh mắt xung quanh')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000159', N'Đầm ren phối lưới, Trắng, XL', N'Trắng', N'XL', N'Vải Ren', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng xòe cũng khiến cho người mặc hút hồn biết bao ánh mắt xung quanh')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000160', N'Đầm dập ly tay bồng, Vàng Nghệ, S', N'Vàng Nghệ', N'S', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000161', N'Đầm dập ly tay bồng, Vàng Nghệ, M', N'Vàng Nghệ', N'M', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000162', N'Đầm dập ly tay bồng, Vàng Nghệ, L', N'Vàng Nghệ', N'L', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000163', N'Đầm dập ly tay bồng, Vàng Nghệ, XL', N'Vàng Nghệ', N'XL', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000164', N'Đầm dập ly tay bồng, Đỏ Ruby, S', N'Đỏ Ruby', N'S', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000165', N'Đầm dập ly tay bồng, Đỏ Ruby, M', N'Đỏ Ruby', N'M', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000166', N'Đầm dập ly tay bồng, Đỏ Ruby, L', N'Đỏ Ruby', N'L', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000167', N'Đầm dập ly tay bồng, Đỏ Ruby, XL', N'Đỏ Ruby', N'XL', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu dáng tiện dụng được cho đa số dạ hội, dự tiệc đồng thời không khó để phù hợp cũng như tôn dáng')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000168', N'Đầm voan xòe xếp tầng, Nâu Cafe, S', N'Nâu Cafe', N'S', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000169', N'Đầm voan xòe xếp tầng, Nâu Cafe, M', N'Nâu Cafe', N'M', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000170', N'Đầm voan xòe xếp tầng, Nâu Cafe, L', N'Nâu Cafe', N'L', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000171', N'Đầm voan xòe xếp tầng, Nâu Cafe, XL', N'Nâu Cafe', N'XL', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000172', N'Đầm voan xòe xếp tầng, Tím Lavender, S', N'Tím Lavender', N'S', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000173', N'Đầm voan xòe xếp tầng, Tím Lavender, M', N'Tím Lavender', N'M', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000174', N'Đầm voan xòe xếp tầng, Tím Lavender, L', N'Tím Lavender', N'L', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000175', N'Đầm voan xòe xếp tầng, Tím Lavender, XL', N'Tím Lavender', N'XL', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000176', N'Đầm voan xòe xếp tầng, Đen, S', N'Đen', N'S', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000177', N'Đầm voan xòe xếp tầng, Đen, M', N'Đen', N'M', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000178', N'Đầm voan xòe xếp tầng, Đen, L', N'Đen', N'L', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000179', N'Đầm voan xòe xếp tầng, Đen, XL', N'Đen', N'XL', N'Voan', 2790000.0000, N'IVYmoda', N'Việt Nam', 20, N'Thiết kế gọn gàng, sang trọng thích hợp cho các buổi tiệc')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000180', N'Áo khoác dạ lông cừu cao cấp, Đen, S', N'Đen', N'S', N'Dạ, Lông Cừu', 6392000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000181', N'Áo khoác dạ lông cừu cao cấp, Đen, M', N'Đen', N'M', N'Dạ, Lông Cừu', 6392000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000182', N'Áo khoác dạ lông cừu cao cấp, Đen, L', N'Đen', N'L', N'Dạ, Lông Cừu', 6392000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000183', N'Áo khoác dạ lông cừu cao cấp, Đen, XL', N'Đen', N'XL', N'Dạ, Lông Cừu', 6392000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000184', N'Áo khoác dạ lông cừu cao cấp, Nude, S', N'Nude', N'S', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000185', N'Áo khoác dạ lông cừu cao cấp, Nude, M', N'Nude', N'M', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000186', N'Áo khoác dạ lông cừu cao cấp, Nude, L', N'Nude', N'L', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000187', N'Áo khoác dạ lông cừu cao cấp, Nude, XL', N'Nude', N'XL', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000188', N'Áo khoác dạ lông cừu cao cấp, Đỏ, S', N'Đỏ', N'S', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000189', N'Áo khoác dạ lông cừu cao cấp, Đỏ, M', N'Đỏ', N'M', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000190', N'Áo khoác dạ lông cừu cao cấp, Đỏ, L', N'Đỏ', N'L', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000191', N'Áo khoác dạ lông cừu cao cấp, Đỏ, XL', N'Đỏ', N'XL', N'Dạ, Lông Cừu', 5992000.0000, N'IVYmoda', N'Việt Nam', 20, N'Kiểu áo này không chỉ ấm áp mà còn khiến bạn dễ phối đồ với rất nhiều kiểu đồ và phụ kiện khác nhau')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000192', N'Áo nam da cừu, Đen, S', N'Đen', N'S', N'Da Cừu', 5832000.0000, N'IVYmoda', N'Việt Nam', 20, N'Áo da thật làm từ da cừu luôn bền đẹp sang trọng theo thời gian')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000193', N'Áo nam da cừu, Đen, M', N'Đen', N'M', N'Da Cừu', 5832000.0000, N'IVYmoda', N'Việt Nam', 20, N'Áo da thật làm từ da cừu luôn bền đẹp sang trọng theo thời gian')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000194', N'Áo nam da cừu, Đen, L', N'Đen', N'L', N'Da Cừu', 5832000.0000, N'IVYmoda', N'Việt Nam', 20, N'Áo da thật làm từ da cừu luôn bền đẹp sang trọng theo thời gian')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000195', N'Áo nam da cừu, Đen, XL', N'Đen', N'XL', N'Da Cừu', 5832000.0000, N'IVYmoda', N'Việt Nam', 20, N'Áo da thật làm từ da cừu luôn bền đẹp sang trọng theo thời gian')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000196', N'Túi Louis Vuitton Mini, Hồng Xanh, 15.5×10.5×4', N'Hồng Xanh', N'15.5×10.5×4', N'Cachemire Leather', 18000000.0000, N'Louis Vuitton', N'Pháp', 10, N'Louis Vuitton giới thiệu BST LV Escale lấy cảm hứng từ kỹ thuật nhuộm Shibori truyền thống của Nhật Bản')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000197', N'Túi Louis Vuitton Mini, Đỏ Hồng, 15.5×10.5×4', N'Đỏ Hồng', N'15.5×10.5×4', N'Cachemire Leather', 18000000.0000, N'Louis Vuitton', N'Pháp', 10, N'Louis Vuitton giới thiệu BST LV Escale lấy cảm hứng từ kỹ thuật nhuộm Shibori truyền thống của Nhật Bản')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000198', N'Túi Louis Vuitton Mini, Hồng Pastel, 15.5×10.5×4', N'Hồng Pastel', N'15.5×10.5×4', N'Cachemire Leather', 18000000.0000, N'Louis Vuitton', N'Pháp', 10, N'Louis Vuitton giới thiệu BST LV Escale lấy cảm hứng từ kỹ thuật nhuộm Shibori truyền thống của Nhật Bản')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000199', N'Cặp da cá sấu, Nâu, 38x28x9', N'Nâu', N'38x28x9', N'Da Cá Sấu', 7900000.0000, N'Gento', N'Thái Lan', 10, N'Đẳng cấp doanh nhân được nâng lên tầm cao mới khi những bộ trang phục giản dị hàng ngày được kết hợp cùng một chiếc túi da cá sấu xa xỉ')
INSERT [dbo].[SanPham] ([maSP], [tenSP], [mauSac], [size], [chatLieu], [donGia], [thuongHieu], [nguonGoc], [soLuongTon], [moTa]) VALUES (N'SP0000200', N'Cặp da cá sấu, Nâu, 38x28x9', N'Nâu', N'38x28x9', N'Da Cá Sấu', 7900000.0000, N'Gento', N'Thái Lan', 10, N'Đẳng cấp doanh nhân được nâng lên tầm cao mới khi những bộ trang phục giản dị hàng ngày được kết hợp cùng một chiếc túi da cá sấu xa xỉ')
GO
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100011', N'21100011', N'012121', 1)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100020', N'21100020', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100030', N'21100030', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100040', N'21100040', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100050', N'21100050', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100061', N'21100061', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100070', N'21100070', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100080', N'21100080', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100090', N'21100090', N'012121', 0)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThaiKichHoat]) VALUES (N'21100100', N'21100100', N'012121', 0)
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBanHang] FOREIGN KEY([maHDBH])
REFERENCES [dbo].[HoaDonBanHang] ([maHDBH])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBanHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_SanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhapHang_HoaDonNhapHang1] FOREIGN KEY([maHDNH])
REFERENCES [dbo].[HoaDonNhapHang] ([maHDNH])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang] CHECK CONSTRAINT [FK_ChiTietHoaDonNhapHang_HoaDonNhapHang1]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhapHang_SanPham1] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([maSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang] CHECK CONSTRAINT [FK_ChiTietHoaDonNhapHang_SanPham1]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanHang_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [FK_HoaDonBanHang_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanHang_NhanVien] FOREIGN KEY([maNhanVienLapHDBH])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [FK_HoaDonBanHang_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhapHang_NhanVien] FOREIGN KEY([maNhanVienLapHDNH])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDonNhapHang] CHECK CONSTRAINT [FK_HoaDonNhapHang_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_CaLamViec] FOREIGN KEY([maCaLamViec])
REFERENCES [dbo].[CaLamViec] ([maCaLamViec])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_CaLamViec]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([maNguoiQuanLiThemVao])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
ALTER TABLE [dbo].[NhatKiBanHangTheoCa]  WITH CHECK ADD  CONSTRAINT [FK_NhatKiBanHangTheoCa_NhanVien] FOREIGN KEY([maNhanVienLapNKBHTC])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[NhatKiBanHangTheoCa] CHECK CONSTRAINT [FK_NhatKiBanHangTheoCa_NhanVien]
GO
ALTER TABLE [dbo].[PhieuDoiChung]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDoiChung_NhanVien] FOREIGN KEY([maNhanVienLapPhieu])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuDoiChung] CHECK CONSTRAINT [FK_PhieuDoiChung_NhanVien]
GO
ALTER TABLE [dbo].[PhieuDoiChung]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDoiChung_NhanVien1] FOREIGN KEY([maNhanVienKiemPhieu])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuDoiChung] CHECK CONSTRAINT [FK_PhieuDoiChung_NhanVien1]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO
