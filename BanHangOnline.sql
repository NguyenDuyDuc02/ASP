USE [master]
GO
/****** Object:  Database [qlBanHang]    Script Date: 3/20/2024 3:35:33 PM ******/
CREATE DATABASE [qlBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\qlBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\qlBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [qlBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [qlBanHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [qlBanHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [qlBanHang]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id_account] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nchar](20) NOT NULL,
	[MatKhau] [nchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SoDienThoai] [nchar](20) NULL,
	[Email] [nchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[GioiTinh] [int] NULL,
	[NgayTao] [date] NULL,
	[role] [int] NOT NULL,
	[SoLanMuaHang] [int] NULL,
	[SoLanHuyHang] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinh](
	[id_cauhinh] [int] IDENTITY(1,1) NOT NULL,
	[ManHinh] [nvarchar](50) NULL,
	[DoPhanGiai] [nvarchar](50) NULL,
	[CongNgheManHinh] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[BoNho] [nvarchar](50) NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[KichThuoc] [nvarchar](50) NULL,
	[TrongLuong] [nvarchar](50) NULL,
	[Camera] [nvarchar](200) NULL,
	[Pin] [nvarchar](200) NULL,
	[CPU] [nvarchar](200) NULL,
	[HinhAnh_CPU] [nchar](20) NULL,
	[HinhAnh_RAM] [nchar](20) NULL,
	[HinhAnh_Camera] [nchar](20) NULL,
	[HinhAnh_Pin] [nchar](20) NULL,
	[NoiDung_CPU] [nvarchar](1000) NULL,
	[NoiDung_RAM] [nvarchar](1000) NULL,
	[NoiDung_Camera] [nvarchar](1000) NULL,
	[NoiDung_Pin] [nvarchar](1000) NULL,
	[Chip] [nvarchar](50) NULL,
	[id_sanpham] [int] NOT NULL,
 CONSTRAINT [PK_CauHinh] PRIMARY KEY CLUSTERED 
(
	[id_cauhinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[id_comment] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](100) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[id_sanpham] [int] NOT NULL,
	[id_account] [int] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[id_comment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[id_DonHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nchar](20) NULL,
	[SoDienThoai] [nchar](20) NOT NULL,
	[id_magiamgia] [int] NULL,
	[id_account] [int] NOT NULL,
	[TongTien] [float] NULL,
	[NgayTao] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[id_DonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[id_magiamgia] [int] IDENTITY(1,1) NOT NULL,
	[code] [nchar](20) NULL,
	[SoTienGiam] [float] NULL,
	[SoLanNhap] [int] NULL,
	[SoLanDaNhap] [int] NULL,
	[NgayHetHan] [date] NULL,
	[DonHangToiThieu] [float] NULL,
	[NgayTao] [date] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[id_magiamgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[id_giohang] [int] IDENTITY(1,1) NOT NULL,
	[id_sanpham] [int] NULL,
	[id_account] [int] NULL,
	[id_donhang] [int] NULL,
	[DonGiaBan] [money] NULL,
	[SoLuongBan] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[id_giohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[id_loaisanpham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[id_loaisanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[id_nhacungcap] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nchar](20) NOT NULL,
	[NgayTao] [date] NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[id_nhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanHoi]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanHoi](
	[id_phanhoi] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[id_comment] [int] NOT NULL,
	[id_account] [int] NOT NULL,
	[NgayPhanHoi] [date] NULL,
 CONSTRAINT [PK_PhanHoi] PRIMARY KEY CLUSTERED 
(
	[id_phanhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[id_sanpham] [int] IDENTITY(1,1) NOT NULL,
	[LoaiSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](200) NOT NULL,
	[Avatar] [nchar](20) NOT NULL,
	[MoTa] [nvarchar](2000) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[GiaGiam] [float] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[NhaCungCap] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[DoHot] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[id_sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 3/20/2024 3:35:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[id_tintuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](500) NULL,
	[NoiDung] [text] NULL,
	[HinhAnh] [nchar](20) NULL,
	[NgayTao] [date] NULL,
	[GioiThieu] [nvarchar](1000) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[id_tintuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CauHinh]  WITH CHECK ADD  CONSTRAINT [FK_CauHinh_SanPham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[SanPham] ([id_sanpham])
GO
ALTER TABLE [dbo].[CauHinh] CHECK CONSTRAINT [FK_CauHinh_SanPham]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id_account])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Account]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_SanPham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[SanPham] ([id_sanpham])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id_account])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Account]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_GiamGia] FOREIGN KEY([id_magiamgia])
REFERENCES [dbo].[GiamGia] ([id_magiamgia])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_GiamGia]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id_account])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Account]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_DonHang] FOREIGN KEY([id_donhang])
REFERENCES [dbo].[DonHang] ([id_DonHang])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_DonHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([id_sanpham])
REFERENCES [dbo].[SanPham] ([id_sanpham])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoi_Account] FOREIGN KEY([id_account])
REFERENCES [dbo].[Account] ([id_account])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK_PhanHoi_Account]
GO
ALTER TABLE [dbo].[PhanHoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanHoi_Comment] FOREIGN KEY([id_comment])
REFERENCES [dbo].[Comment] ([id_comment])
GO
ALTER TABLE [dbo].[PhanHoi] CHECK CONSTRAINT [FK_PhanHoi_Comment]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([LoaiSanPham])
REFERENCES [dbo].[LoaiSP] ([id_loaisanpham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([id_nhacungcap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
USE [master]
GO
ALTER DATABASE [qlBanHang] SET  READ_WRITE 
GO
