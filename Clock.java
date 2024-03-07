import javax.swing.*;
import java.awt.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class Clock extends JFrame {
    private JLabel timeLabel;
    private int timezoneOffset;

    public Clock(int timezoneOffset) {
        this.timezoneOffset = timezoneOffset;
        setTitle("World Clock");
        setSize(347, 131);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);

        timeLabel = new JLabel();
        timeLabel.setHorizontalAlignment(SwingConstants.CENTER);
        updateTime();

        getContentPane().add(timeLabel, BorderLayout.CENTER);
    }

    public void updateTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        long currentTime = System.currentTimeMillis() + timezoneOffset * 3600 * 1000;
        timeLabel.setText(dateFormat.format(new Date(currentTime)));
    }
}