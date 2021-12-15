package TestGC;

import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;
import java.util.List;

public class Test extends JFrame {

    public Test(){
        setSize(400, 400);

        dungUI();

        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(false);
    }

    private void dungUI(){
        dungPnlCHinh();
        getContentPane().add(pnlChinh, BorderLayout.CENTER);
    }

    private void dungPnlCHinh(){
        pnlChinh.setPreferredSize(new Dimension(400, 400));
        pnlChinh.setBackground(Color.WHITE);
        pnlChinh.setLayout(new FlowLayout(FlowLayout.LEFT, 20, 5));

        datHanhDongChoBtnThemNut();
        pnlChinh.add(btnThemNut);
    }

    private void datHanhDongChoBtnThemNut(){
        btnThemNut.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int l = dsBtn.size();

                JButton btn = new JButton("btn" + l);
                datHanhDongChoDSBtn(btn);
                dsBtn.add(btn);

                pnlChinh.repaint();
                pnlChinh.revalidate();

                pnlChinh.add(btn);
            }
        });
    }

    private void datHanhDongChoDSBtn(JButton btn){
//        dsBtn.forEach(btn -> {
//            if (btn.getMouseListeners().length <= 1){
//                btn.addMouseListener(new MouseAdapter() {
//                    @Override
//                    public void mouseClicked(MouseEvent e) {
//                        System.out.println(dsBtn.indexOf(btn));
//                    }
//                });
//            }
//        });
        int l = dsBtn.size();
        btn.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                System.out.println(l);
            }
        });
    }

    JPanel pnlChinh = new JPanel();
    List<JButton> dsBtn = new ArrayList<>();
    JButton btnThemNut = new JButton("Them nut");

    public static void main(String[] args) {
        new Test().setVisible(true);
    }
}
