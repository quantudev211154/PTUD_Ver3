package ui.giaodienchinh;

import connectDB.KetNoiCSDL;
import dao.NhanVienDAO;
import entity.NhanVien;
import services.CacHamDungSan;
import ui.cauhinhchung.CaNhanHoaLookAndFeel;
import ui.giaodienchinh.giaodiencanhbaodangxuat.GDCanhBaoDangXuat;
import ui.giaodienchinh.pnllapthongke.PnlLapThongKe;
import ui.giaodienchinh.pnlqlbanhang.PnlQLBanHang;
import ui.giaodienchinh.pnlqlghichu.PnlQLGhiChu;
import ui.giaodienchinh.pnlqlghichu.gdthemghichu.GDThemGhiChu;
import ui.giaodienchinh.pnlqlkhachhang.PnlQLKhachHang;
import ui.giaodienchinh.pnlqlnhanvien.PnlQLNhanVien;
import ui.giaodienchinh.pnlqlnhanvien.gdxemthongtinnhanvien.GDXemTTNhanVien;
import ui.giaodienchinh.pnlqlnhaphang.PnlQLNhapHang;
import ui.giaodienchinh.pnlqlsanpham.PnlQLSanPham;
import ui.giaodienchinh.pnlqlthuchi.PnlQLThuChi;
import ui.giaodiendoimatkhau.GDDoiMatKhau;
import ui.giaodienthongbaongoaivi.GDThongBaoKetQua;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.io.File;

public class GDChinh extends JFrame implements IDSBienGDChinh {
    private static NhanVien nhanVienDangSuDung = null;

    public GDChinh(NhanVien nhanVien){
        nhanVienDangSuDung = nhanVien;

        setTitle(tieuDe);
        setIconImage(Toolkit.getDefaultToolkit().getImage(pathLogoMacDinh));

        dungUI();

        setUndecorated(true);
        setSize(dimGDChinh);
        setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(false);

        addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                hienThiCanhBaoDangXuat();
            }
        });

        datPhimNong();

        chayNgamCacPnlDieuHuong();
    }

    private void hienThiCanhBaoDangXuat(){
        SwingUtilities.invokeLater(() -> {
            GDCanhBaoDangXuat gdCanhBaoDangXuat = GDCanhBaoDangXuat.getGdCanhBaoDangXuat();
            gdCanhBaoDangXuat.setVisible(true);
        });
    }

    public static NhanVien getNhanVienDangSuDung() {
        return nhanVienDangSuDung;
    }

    private void datPhimNong(){
        moNhanhGDDoiMatKhau();

        moNhanhGDHienThiTTNVDangSuDung();

        moNhanhGDCanhBaoDangXuat();

        moNhanhWebsiteHDSD();

        moNhanhGDThemGhiChu();
    }

    /**
     * <p>Mở nhanh GD hiển thị thông tin nhân viên đang sử dụng bằng phím tắt</p>
     * <p><b>Tổ hợp phím: Ctrl + I</b></p>
     */
    private void moNhanhGDHienThiTTNVDangSuDung(){
        Action moGDHienThiTTNVDangSuDung = new AbstractAction(){
            @Override
            public void actionPerformed(ActionEvent e) {
                moGDVaHienThiTTNVDangSuDung();
            }
        };

        KeyStroke hotKey = KeyStroke.getKeyStroke(
                KeyEvent.VK_I,
                KeyEvent.CTRL_DOWN_MASK
        );

        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(hotKey, "CTRL + I");

        getRootPane().getActionMap().put("CTRL + I", moGDHienThiTTNVDangSuDung);
    }

    private void moGDVaHienThiTTNVDangSuDung(){
        SwingUtilities.invokeLater(() -> {
            GDXemTTNhanVien gdXemTTNhanVien = GDXemTTNhanVien.getGdXemTTNhanVien();

            GDXemTTNhanVien.hienThiThongTinNhanVienLenTxt(nhanVienDangSuDung);

            gdXemTTNhanVien.setVisible(true);
        });
    }

    /**
     * <p>Mở nhanh GD đổi mật khẩu bằng phím tắt</p>
     * <p><b>Tổ hợp phím: Ctrl + P</b></p>
     */
    private void moNhanhGDDoiMatKhau(){
        Action moGDoiMatKhau = new AbstractAction(){
            @Override
            public void actionPerformed(ActionEvent e) {
                moGDDoiMatKhau();
            }
        };

        KeyStroke hotKey = KeyStroke.getKeyStroke(
                KeyEvent.VK_P,
                KeyEvent.CTRL_DOWN_MASK
        );

        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(hotKey, "CTRL + P");

        getRootPane().getActionMap().put("CTRL + P", moGDoiMatKhau);
    }

    private void moGDDoiMatKhau(){
        SwingUtilities.invokeLater(() -> {
            GDDoiMatKhau gd = GDDoiMatKhau.getGdDoiMatKhau();

            gd.setTenDangNhap(nhanVienDangSuDung.getMaNV());

            gd.setVisible(true);
            gd.requestFocusInWindow();
        });
    }

    /**
     * <p>Mở nhanh GD cảnh báo đăng xuất bằng phím tắt</p>
     * <p><b>Tổ hợp phím: Ctrl + O</b></p>
     */
    private void moNhanhGDCanhBaoDangXuat(){
        Action moGDCanhBaoDangXuat = new AbstractAction(){
            @Override
            public void actionPerformed(ActionEvent e) {
                hienThiCanhBaoDangXuat();
            }
        };

        KeyStroke hotKey = KeyStroke.getKeyStroke(
                KeyEvent.VK_Q,
                KeyEvent.CTRL_DOWN_MASK
        );

        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(hotKey, "CTRL + Q");

        getRootPane().getActionMap().put("CTRL + Q", moGDCanhBaoDangXuat);
    }

    private void moNhanhWebsiteHDSD(){
        Action moWebsiteHDSD = new AbstractAction(){
            @Override
            public void actionPerformed(ActionEvent e) {
                moWebsiteHDSD();
            }
        };

        KeyStroke hotKey = KeyStroke.getKeyStroke(
                KeyEvent.VK_H,
                KeyEvent.CTRL_DOWN_MASK
        );

        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(hotKey, "CTRL + H");

        getRootPane().getActionMap().put("CTRL + H", moWebsiteHDSD);
    }

    private void moWebsiteHDSD(){
        try{
            String path = "src/main/resources/WebsiteHDSD/public/Index.html";
            File file = new File(path);

            Desktop desktop = Desktop.isDesktopSupported() ? Desktop.getDesktop() : null;

            if (desktop != null && desktop.isSupported(Desktop.Action.BROWSE)){
                desktop.open(file);
            }
        } catch (Exception ex){
            ex.printStackTrace();
            CacHamDungSan.hienThiThongBaoKetQua(
                    GDThongBaoKetQua.THONG_BAO_LOI,
                    "Rất xin lỗi. Màn hình của bạn không tương thích dẫn đến không thể mở được file " +
                            "hướng dẫn sử dụng."
            );
        }
    }

    private void moNhanhGDThemGhiChu(){
        Action moGDThemGhiChu = new AbstractAction(){
            @Override
            public void actionPerformed(ActionEvent e) {
                moGDThemGhiChu();
            }
        };

        KeyStroke hotKey = KeyStroke.getKeyStroke(
                KeyEvent.VK_N,
                KeyEvent.CTRL_DOWN_MASK
        );

        getRootPane().getInputMap(JComponent.WHEN_IN_FOCUSED_WINDOW)
                .put(hotKey, "CTRL + N");

        getRootPane().getActionMap().put("CTRL + N", moGDThemGhiChu);
    }

    private void moGDThemGhiChu(){
        SwingUtilities.invokeLater(() -> {
            GDThemGhiChu gdThemGhiChu = GDThemGhiChu.getGdThemGhiChu();
            gdThemGhiChu.setVisible(true);
        });
    }

    private void dungUI(){
        dungLypKhungDaLopChinh();

        getContentPane().add(lypKhungDaLopChinh, BorderLayout.CENTER);
    }

    private void dungLypKhungDaLopChinh(){
        lypKhungDaLopChinh.setPreferredSize(dimGDChinh);
        lypKhungDaLopChinh.setBounds(
                0, 0,
                dimGDChinh.width,
                dimGDChinh.height
        );

        dungPnlChinhThuc();
        pnlChinhThuc.setBounds(
                0, 0,
                dimGDChinh.width,
                dimGDChinh.height
        );
        lypKhungDaLopChinh.add(pnlChinhThuc, Integer.valueOf(0));

        dungPnlDieuHuong();
        pnlDieuHuong.setBounds(
                0, 0,
                dimPnlDieuHuongMacDinh.width,
                dimPnlDieuHuongMacDinh.height
        );
        lypKhungDaLopChinh.add(pnlDieuHuong, Integer.valueOf(1));
    }

    private void dungPnlDieuHuong(){
        pnlDieuHuong.setBackground(bgrMacDinh);
        pnlDieuHuong.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));
        pnlDieuHuong.setPreferredSize(dimPnlDieuHuongMacDinh);

        dungPnlLogo();
        pnlDieuHuong.add(pnlLogo);

        dungPnlThanhDieuHuongChinh();
        pnlDieuHuong.add(pnlThanhDieuHuongChinh);

        dungPnlNutDangXuat();
        pnlDieuHuong.add(pnlNutDangXuat);
    }

    private void dungPnlLogo(){
        pnlLogo.setPreferredSize(dimPnlLoGoMacDinh);
        pnlLogo.setBackground(bgrPnlDieuHuong);
        pnlLogo.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 10));

        datThuocTinhVaHanhDongChoLblLogo();
        pnlLogo.add(lblLogo);
    }

    private void datThuocTinhVaHanhDongChoLblLogo(){
        lblLogo.setPreferredSize(dimLblLogo);
        lblLogo.setBorder(null);

        lblLogo.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if (pnlDieuHuong.getPreferredSize().width == dimPnlDieuHuongMacDinh.width){
                    bienDoiPnlDieuHuongKhiMoRong();
                }
                else{
                    bienDoiPnlDieuHuongKhiThuHepVeMacDinh();
                }
            }

            @Override
            public void mousePressed(MouseEvent e) {
                lblLogo.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                lblLogo.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseEntered(MouseEvent e) {
                lblLogo.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                lblLogo.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }
        });
    }

    private void bienDoiPnlDieuHuongKhiMoRong(){
        pnlDieuHuong.setBounds(
                0, 0,
                dimPnlDieuHuongMoRong.width,
                dimPnlDieuHuongMacDinh.height
        );

        pnlDieuHuong.setPreferredSize(dimPnlDieuHuongMoRong);

        pnlLogo.setPreferredSize(dimPnlLogoMoRong);

        pnlThanhDieuHuongChinh.setPreferredSize(dimPnlThanhDieuHuongChinhMoRong);

        pnlNutDangXuat.setPreferredSize(dimBtnDieuHuongMacDinh);

        bienDoiPnlLogoVaCacNutDieuHuongKhiMoRongPnlDieuHuong();
    }

    private void bienDoiPnlLogoVaCacNutDieuHuongKhiMoRongPnlDieuHuong(){
        pnlLogo.setPreferredSize(dimPnlLogoMoRong);

        pnlNutQLBanHang.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLKhachHang.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLSanPham.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLNhapHang.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLThuChi.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLGhiChu.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutQLNhanVien.setPreferredSize(dimBtnDieuHuongMoRong);
        pnlNutThongKe.setPreferredSize(dimBtnDieuHuongMoRong);

        pnlNutDangXuat.setPreferredSize(dimBtnDieuHuongMoRong);

        pnlThanhDieuHuongChinh.revalidate();
    }

    private void bienDoiPnlDieuHuongKhiThuHepVeMacDinh(){
        pnlDieuHuong.setBounds(
                0, 0,
                dimPnlDieuHuongMacDinh.width,
                dimPnlDieuHuongMacDinh.height
        );

        pnlDieuHuong.setPreferredSize(dimPnlDieuHuongMacDinh);

        pnlLogo.setPreferredSize(dimPnlLoGoMacDinh);

        pnlThanhDieuHuongChinh.setPreferredSize(dimPnlThanhDieuHuongChinhMacDinh);

        pnlNutDangXuat.setPreferredSize(dimBtnDieuHuongMacDinh);

        bienDoiPnlLogoVaCacNutDieuHuongKhiThuHepPnlDieuHuong();
    }

    private void bienDoiPnlLogoVaCacNutDieuHuongKhiThuHepPnlDieuHuong(){
        pnlLogo.setPreferredSize(dimPnlLoGoMacDinh);

        pnlNutQLBanHang.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLKhachHang.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLSanPham.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLNhapHang.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLThuChi.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLGhiChu.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutQLNhanVien.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutThongKe.setPreferredSize(dimBtnDieuHuongMacDinh);

        pnlNutDangXuat.setPreferredSize(dimBtnDieuHuongMacDinh);

        pnlThanhDieuHuongChinh.revalidate();
    }

    private void dungPnlThanhDieuHuongChinh(){
        pnlThanhDieuHuongChinh.setBackground(bgrPnlDieuHuong);
        pnlThanhDieuHuongChinh.setPreferredSize(dimPnlThanhDieuHuongChinhMacDinh);
        pnlThanhDieuHuongChinh.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));

        themCacNutDieuHuongVaoPnlThanhDieuHuong();
    }

    private void themCacNutDieuHuongVaoPnlThanhDieuHuong(){
        dungCacNutDieuHuong(pnlNutQLBanHang, lblIcnNutQLBanHang, lblTieuDeNutQLBanHang);
        datHanhDongChoNutQLBanHangKhiDuocChon();
        pnlNutQLBanHang.setToolTipText("Quản lí bán hàng");
        pnlThanhDieuHuongChinh.add(pnlNutQLBanHang);

        danhDauNutDieuHuongKhiDuocChon(pnlNutQLBanHang, lblTieuDeNutQLBanHang);

        dungCacNutDieuHuong(pnlNutQLKhachHang, lblIcnNutQLKhachHang, lblTieuDeNutQLKhachHang);
        datHanhDongChoNutQLKhachHangKhiDuocChon();
        pnlNutQLKhachHang.setToolTipText("Quản lí khách hàng");
        pnlThanhDieuHuongChinh.add(pnlNutQLKhachHang);

        dungCacNutDieuHuong(pnlNutQLSanPham, lblIcnNutQLSanPham, lblTieuDeNutQLSanPham);
        datHanhDongChoPnlQLSanPhamKhiDuocChon();
        pnlNutQLSanPham.setToolTipText("Quản lí sản phẩm");
        pnlThanhDieuHuongChinh.add(pnlNutQLSanPham);

        dungCacNutDieuHuong(pnlNutQLNhapHang, lblIcnNutQLNhapHang, lblTieuDeNutQLNhapHang);
        datHanhDongChoPnlQLNhapHangKhiDuocChon();
        pnlNutQLNhapHang.setToolTipText("Quản lí nhập hàng");
        pnlThanhDieuHuongChinh.add(pnlNutQLNhapHang);

        dungCacNutDieuHuong(pnlNutQLThuChi, lblIcnNutQLThuChi, lblTieuDeNutQLThuChi);
        datHanhDongChoPnlQLThuChiKhiDuocChon();
        pnlNutQLThuChi.setToolTipText("Quản lí thu chi");
        pnlThanhDieuHuongChinh.add(pnlNutQLThuChi);

        dungCacNutDieuHuong(pnlNutQLGhiChu, lblIcnNutQLGhiChu, lblTieuDeNutQLGhiChu);
        datHanhDongChoPnlQLGhiChuKhiDuocChon();
        pnlNutQLGhiChu.setToolTipText("Quản lí ghi chú");
        pnlThanhDieuHuongChinh.add(pnlNutQLGhiChu);

        if (nhanVienDangSuDung.isQuanLi()){
            dungCacNutDieuHuong(pnlNutQLNhanVien, lblIcnNutQLNhanVien, lblTieuDeNutQLNhanVien);
            datHanhDongChoPnlQLNhanVienKhiDuocChon();
            pnlNutQLNhanVien.setToolTipText("Quản lí nhân viên");
            pnlThanhDieuHuongChinh.add(pnlNutQLNhanVien);

            dungCacNutDieuHuong(pnlNutThongKe, lblIcnNutQLThongKe, lblTieuDeNutThongKe);
            datHanhDongChoPnlLapThongKeKhiDuocChon();
            pnlNutThongKe.setToolTipText("Lập thống kê");
            pnlThanhDieuHuongChinh.add(pnlNutThongKe);
        }
    }

    private void datHanhDongChoNutQLBanHangKhiDuocChon(){
        pnlNutQLBanHang.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí bán hàng");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLBanHang.getPnlQLBanHang());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLBanHang = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLBanHang, lblTieuDeNutQLBanHang);

                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLBanHang.start();
            }
        });
    }

    private void chayNgamCacPnlDieuHuong(){
        new Thread(PnlQLKhachHang::getPnlQLKhachHang).start();

        new Thread(PnlQLSanPham::getPnlQLSanPham).start();

        new Thread(PnlQLNhapHang::getPnlQLNhapHang).start();

        new Thread(PnlQLThuChi::getPnlQLThuChi).start();

        if (nhanVienDangSuDung.isQuanLi()){
            new Thread(PnlQLNhanVien::getPnlQLNhanVien).start();

            new Thread(PnlLapThongKe::getPnlLapThongKe).start();
        }
    }

    private void datHanhDongChoNutQLKhachHangKhiDuocChon(){
        pnlNutQLKhachHang.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí khách hàng");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLKhachHang.getPnlQLKhachHang());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLKhachHang = new Thread(() ->{
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLKhachHang.start();
            }
        });
    }

    private void datHanhDongChoPnlQLSanPhamKhiDuocChon(){
        pnlNutQLSanPham.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí sản phẩm");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLSanPham.getPnlQLSanPham());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();


                Thread luongDanhDauNutQLSanPham = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLSanPham, lblTieuDeNutQLSanPham);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblIcnNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLSanPham.start();
            }
        });
    }

    private void datHanhDongChoPnlQLNhapHangKhiDuocChon(){
        pnlNutQLNhapHang.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí nhập hàng");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLNhapHang.getPnlQLNhapHang());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLNhapHang = new Thread(() -> {

                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLNhapHang.start();
            }
        });
    }

    private void datHanhDongChoPnlQLThuChiKhiDuocChon(){
        pnlNutQLThuChi.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí thu chi");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLThuChi.getPnlQLThuChi());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLThuChi = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLThuChi, lblTieuDeNutQLThuChi);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLThuChi.start();
            }
        });
    }

    private void datHanhDongChoPnlQLGhiChuKhiDuocChon(){
        pnlNutQLGhiChu.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí ghi chú");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLGhiChu.getPnlQLGhiChu());

                new Thread(PnlQLGhiChu::phanLoaiCacGhiChuTheoThoiGian).start();

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLGhiChu = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLGhiChu.start();
            }
        });
    }

    private void datHanhDongChoPnlQLNhanVienKhiDuocChon(){
        pnlNutQLNhanVien.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Quản lí nhân viên");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlQLNhanVien.getPnlQLNhanVien());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauNutQLNhanVien = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutThongKe, lblTieuDeNutThongKe);
                });

                luongDanhDauNutQLNhanVien.start();
            }
        });
    }

    private void datHanhDongChoPnlLapThongKeKhiDuocChon(){
        pnlNutThongKe.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                lblHienThiThaoTacDieuHuong.setText("Lập thống kê");

                pnlNoiDung.removeAll();

                pnlNoiDung.add(PnlLapThongKe.getPnlLapThongKe());

                pnlNoiDung.revalidate();
                pnlNoiDung.repaint();

                Thread luongDanhDauPnlLapThongKe = new Thread(() -> {
                    danhDauNutDieuHuongKhiDuocChon(pnlNutThongKe, lblTieuDeNutThongKe);

                    boDanhDauNutDieuHuong(pnlNutQLBanHang, lblTieuDeNutQLBanHang);
                    boDanhDauNutDieuHuong(pnlNutQLKhachHang, lblTieuDeNutQLKhachHang);
                    boDanhDauNutDieuHuong(pnlNutQLSanPham, lblTieuDeNutQLSanPham);
                    boDanhDauNutDieuHuong(pnlNutQLNhapHang, lblTieuDeNutQLNhapHang);
                    boDanhDauNutDieuHuong(pnlNutQLThuChi, lblTieuDeNutQLThuChi);
                    boDanhDauNutDieuHuong(pnlNutQLGhiChu, lblTieuDeNutQLGhiChu);
                    boDanhDauNutDieuHuong(pnlNutQLNhanVien, lblTieuDeNutQLNhanVien);
                });

                luongDanhDauPnlLapThongKe.start();
            }
        });
    }

    private void dungCacNutDieuHuong(JPanel pnl, JLabel lblIcon, JLabel lblTieuDe){
        boDanhDauNutDieuHuong(pnl, lblTieuDe);

        pnl.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnl.setLayout(new BoxLayout(pnl, BoxLayout.X_AXIS));

        pnl.add(Box.createHorizontalStrut(15));
        pnl.add(lblIcon);

        lblTieuDe.setFont(fntBtnDieuHuong);
        pnl.add(Box.createHorizontalStrut(15));
        pnl.add(lblTieuDe);

        pnl.setBackground(bgrPnlDieuHuong);

        pnl.addMouseListener(new MouseAdapter() {
            @Override
            public void mousePressed(MouseEvent e) {
                pnl.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
                pnl.setBackground(bgrCacThanhPhanKhiDuocClickMacDinh);
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                pnl.setCursor(new Cursor(Cursor.HAND_CURSOR));

                if (pnl.getBackground() != bgrBtnDieuHuongKhiDuocChon){
                    pnl.setBackground(bgrMacDinh);
                }
            }

            @Override
            public void mouseEntered(MouseEvent e) {
                pnl.setCursor(new Cursor(Cursor.HAND_CURSOR));

                if (pnl.getBackground() != bgrBtnDieuHuongKhiDuocChon){
                    pnl.setBackground(bgrBtnDieuHuongKhiHover);
                }
            }

            @Override
            public void mouseExited(MouseEvent e) {
                pnl.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));

                if (pnl.getBackground() != bgrBtnDieuHuongKhiDuocChon){
                    pnl.setBackground(bgrPnlDieuHuong);
                }
            }
        });
    }

    private void danhDauNutDieuHuongKhiDuocChon(JPanel pnl, JLabel lbl){
        pnl.setBackground(bgrBtnDieuHuongKhiDuocChon);
        lbl.setForeground(bgrMacDinh);
    }

    private void boDanhDauNutDieuHuong(JPanel pnl, JLabel lbl){
        pnl.setBackground(bgrPnlDieuHuong);
        lbl.setForeground(frgMacDinh);
    }

    private void dungPnlNutDangXuat(){
        pnlNutDangXuat.setBackground(bgrPnlDieuHuong);
        pnlNutDangXuat.setPreferredSize(dimBtnDieuHuongMacDinh);
        pnlNutDangXuat.setLayout(new BorderLayout());

        pnlNutDangXuat.setToolTipText("Đăng xuất");
        dungCacNutDieuHuong(pnlNutDangXuat, lblIcnNutDangXuat, lblTieuDeNutDangXuat);
        datHanhDongChoPnlNutDangXuat();
    }

    private void datHanhDongChoPnlNutDangXuat(){
        pnlNutDangXuat.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                hienThiCanhBaoDangXuat();
            }
        });
    }

    private void dungPnlChinhThuc(){
        pnlChinhThuc.setPreferredSize(dimGDChinh);
        pnlChinhThuc.setLayout(new FlowLayout(FlowLayout.LEFT, 0, 0));

        pnlKhoangTrong.setPreferredSize(dimPnlKhoangTrong);
        pnlChinhThuc.add(pnlKhoangTrong);

        dungPnlChinh();
        pnlChinhThuc.add(pnlChinh);
    }

    private void dungPnlChinh(){
        pnlChinh.setPreferredSize(dimPnlChinh);
        pnlChinh.setBackground(bgrMacDinh);
        pnlChinh.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));

        dungPnlTrangThai();
        pnlChinh.add(pnlTrangThai);

        dungPnlNoiDung();
        pnlChinh.add(pnlNoiDung);
    }

    private void dungPnlTrangThai(){
        pnlTrangThai.setBackground(bgrMacDinh);
        pnlTrangThai.setPreferredSize(dimPnlTrangThai);
        pnlTrangThai.setLayout(new FlowLayout(FlowLayout.LEADING, 0, 0));

        dungPnlHienThiThaoTacDieuHuong();
        pnlTrangThai.add(pnlHienThiThaoTacDieuHuong);

        dungPnlHopCongCu();
        pnlTrangThai.add(pnlHopCongCu);

        dungPnlAvatarNhanVien();
        pnlTrangThai.add(pnlAvatarNhanVien);
    }

    private void dungPnlHienThiThaoTacDieuHuong(){
        pnlHienThiThaoTacDieuHuong.setPreferredSize(dimPnlHienThiThaoTacDieuHuong);
        pnlHienThiThaoTacDieuHuong.setLayout(new FlowLayout(FlowLayout.LEFT, 15, 13));
        pnlHienThiThaoTacDieuHuong.setBackground(bgrPnlChinh);

        CacHamDungSan.datThuocTinhChoLbl(
                lblHienThiThaoTacDieuHuong,
                fntLblHienThiThaoTacDieuHuong,
                frgMacDinh
        );
        lblHienThiThaoTacDieuHuong.setText("Quản lí bán hàng");

        pnlHienThiThaoTacDieuHuong.add(lblHienThiThaoTacDieuHuong);
    }

    private void dungPnlHopCongCu(){
        pnlHopCongCu.setBackground(bgrPnlChinh);
        pnlHopCongCu.setPreferredSize(dimPnlHopCongCu);
        pnlHopCongCu.setLayout(new FlowLayout(FlowLayout.RIGHT, 0, 0));

        dungPnlGhiChu();
        pnlHopCongCu.add(pnlGhiChu);

        pnlHopCongCu.add(Box.createHorizontalStrut(20));

        lblSachHDSD.setToolTipText("Xem hướng dẫn sử dụng ứng dụng (Ctrl + H)");
        datHanhDongChoLblSachHDSD();
        pnlHopCongCu.add(lblSachHDSD);

        pnlHopCongCu.add(Box.createHorizontalStrut(25));
    }

    /**
     * Ham nay chua duoc hoan thien o phan mouseClicked
     */
    private void datHanhDongChoLblSachHDSD(){
        lblSachHDSD.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                moWebsiteHDSD();
            }

            @Override
            public void mousePressed(MouseEvent e) {
                lblSachHDSD.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                lblSachHDSD.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseEntered(MouseEvent e) {
                lblSachHDSD.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                lblSachHDSD.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }
        });
    }

    private void dungPnlGhiChu(){
        pnlGhiChu.setBackground(bgrPnlChinh);
        pnlGhiChu.setPreferredSize(dimPnlGhiChu);
        pnlGhiChu.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));

        dungPnlThongBaoSLGhiChuDenHan();
        pnlGhiChu.add(pnlThongBaoSLGhiChuDenHan);

        datHanhDongChoIcnTaoGhiChu();
        lblIcnTaoGhiChu.setToolTipText("Tạo một ghi chú mới (Ctrl + N)");
        pnlGhiChu.add(lblIcnTaoGhiChu);
    }

    public static void capNhatSoLuongGhiChuChuaHoanThanh(int slGhiChuDenHan){
        lblHienThiSLGhiChuDenHan.setText(slGhiChuDenHan + "");

        if (slGhiChuDenHan == 0){
            lblHienThiSLGhiChuDenHan.setForeground(bgrBtnThem);
        }
        else{
            lblHienThiSLGhiChuDenHan.setForeground(bgrThanhPhanDanhDauLoiMacDinh);
        }
    }

    /**
     * Ham nay chua duoc hoan thien o phan mouseClicked
     */
    private void datHanhDongChoIcnTaoGhiChu(){
        lblIcnTaoGhiChu.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                moGDThemGhiChu();
            }

            @Override
            public void mousePressed(MouseEvent e) {
                lblIcnTaoGhiChu.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }

            @Override
            public void mouseReleased(MouseEvent e) {
                lblIcnTaoGhiChu.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseEntered(MouseEvent e) {
                lblIcnTaoGhiChu.setCursor(new Cursor(Cursor.HAND_CURSOR));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                lblIcnTaoGhiChu.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
            }
        });
    }

    private void dungPnlThongBaoSLGhiChuDenHan(){
        pnlThongBaoSLGhiChuDenHan.setPreferredSize(dimPnlThongBaoSLGhiChuDenHan);
        pnlThongBaoSLGhiChuDenHan.setBackground(bgrPnlChinh);
        pnlThongBaoSLGhiChuDenHan.setLayout(new BorderLayout());

        lblHienThiSLGhiChuDenHan.setForeground(bgrBtnThem);
        lblHienThiSLGhiChuDenHan.setFont(fntMacDinh);
        pnlThongBaoSLGhiChuDenHan.add(lblHienThiSLGhiChuDenHan, BorderLayout.EAST);
        pnlThongBaoSLGhiChuDenHan.add(Box.createHorizontalStrut(10));
    }

    private void dungPnlAvatarNhanVien(){
        pnlAvatarNhanVien.setBackground(bgrPnlChinh);
        pnlAvatarNhanVien.setPreferredSize(dimPnlAvatarNhanVien);
        pnlAvatarNhanVien.setLayout(new FlowLayout(FlowLayout.LEFT, 0, 5));

        if (nhanVienDangSuDung.isNam()) {
            lblAvatarNhanVien.setIcon(
                    new ImageIcon(pathIcnNhanVienNam)
            );
        }
        else{
            lblAvatarNhanVien.setIcon(
                    new ImageIcon(pathIcnNhanVienNu)
            );
        }

        datHanhDongChoLblAvatar();
        pnlAvatarNhanVien.add(lblAvatarNhanVien);

        dungPmnThongTinNhanVien();

        dungPmnTinhNangMoRong();
    }

    private void datHanhDongChoLblAvatar(){
        lblAvatarNhanVien.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                pmnTinhNangMoRong.show(
                        lblAvatarNhanVien,
                        e.getX(),
                        e.getY()
                );
            }

            @Override
            public void mouseEntered(MouseEvent e) {
                lblAvatarNhanVien.setCursor(new Cursor(Cursor.HAND_CURSOR));

                pmnThongTinNhanVien.setVisible(true);
                pmnThongTinNhanVien.show(
                        lblAvatarNhanVien,
                        0,
                        lblAvatarNhanVien.getHeight()
                );
            }

            @Override
            public void mouseExited(MouseEvent e) {
                lblAvatarNhanVien.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));

                pmnThongTinNhanVien.setVisible(false);
            }
        });
    }

    private void dungPmnTinhNangMoRong(){
        pmnTinhNangMoRong.setBackground(bgrPmn);
        pmnTinhNangMoRong.setPreferredSize(dimPmnTinhNangMoRong);
        pmnTinhNangMoRong.setBorder(BorderFactory.createEmptyBorder());

        datHanhDongChoMniXemTTNhanVien();
        pmnTinhNangMoRong.add(mniXemTTNVDangSuDung);

        datHanhDongChoMniDoiMatKhau();
        pmnTinhNangMoRong.add(mniDoiMatKhau);
    }

    private void datHanhDongChoMniXemTTNhanVien(){
        mniXemTTNVDangSuDung.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                moGDVaHienThiTTNVDangSuDung();
            }
        });
    }

    private void datHanhDongChoMniDoiMatKhau(){
        mniDoiMatKhau.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                moGDDoiMatKhau();
            }
        });
    }

    private void dungPmnThongTinNhanVien(){
        pmnThongTinNhanVien.setBackground(bgrPmn);
        pmnThongTinNhanVien.setPreferredSize(dimPmnThongTinNhanVien);
        pmnThongTinNhanVien.setBorder(BorderFactory.createEmptyBorder());

        mniHoTenNV.setText(nhanVienDangSuDung.getHoTen());
        pmnThongTinNhanVien.add(mniHoTenNV);


        mniChucVuNV.setText(
                nhanVienDangSuDung.isQuanLi() ? "Quản lí" : "Nhân viên bán hàng"
        );
        pmnThongTinNhanVien.add(mniChucVuNV);
    }

    private void dungPnlNoiDung(){
        pnlNoiDung.setPreferredSize(dimPnlNoiDung);
        pnlNoiDung.setBackground(bgrPnlChinh);
        pnlNoiDung.setLayout(new FlowLayout(FlowLayout.CENTER, 0, 0));

        pnlNoiDung.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                requestFocusInWindow();
            }
        });

        JPanel pnlQLBanHang = PnlQLBanHang.getPnlQLBanHang();

        pnlNoiDung.add(pnlQLBanHang);
    }

    public static void main(String[] args) {
        KetNoiCSDL.getInstance().thietLapketNoi();
        NhanVien nv = NhanVienDAO.timNhanVienTheoMa("21100011");
        CaNhanHoaLookAndFeel.caNhanHoaLookAndFeel();

        GDChinh gdChinh = new GDChinh(nv);
        gdChinh.setVisible(true);
    }
}
