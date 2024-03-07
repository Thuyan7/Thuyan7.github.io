import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Main extends JFrame {
    private JTextField textField;

    public Main() {
        setTitle("World Clock");
        setSize(506, 86);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        getContentPane().setLayout(new BoxLayout(getContentPane(), BoxLayout.Y_AXIS));

        JLabel lblTimeZone = new JLabel("Time Zone:");
        textField = new JTextField(10);
        textField.setHorizontalAlignment(SwingConstants.CENTER);
        JButton addButton = new JButton("Open");
        addButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                addClock();
            }
        });

        JPanel panel = new JPanel();
        panel.add(lblTimeZone);
        panel.add(textField);
        panel.add(addButton);

        getContentPane().add(panel);
        setVisible(true);
    }

    private void addClock() {
        String timezoneStr = textField.getText().trim();
        try {
            int timezone = Integer.parseInt(timezoneStr);
            if (timezone < -12 || timezone > 12) {
                throw new NumberFormatException();
            }
            Clock clockFrame = new Clock(timezone);
            clockFrame.setVisible(true);
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(this, "Invalid timezone. Please enter a number between -12 and 12.");
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Main();
            }
        });
    }
}