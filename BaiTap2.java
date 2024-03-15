

import java.io.File;
import java.util.Scanner;

public class BaiTap2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập đường dẫn của file:");
        String path = scanner.nextLine();

        File file = new File(path);

        if (file.exists()) {
            if (deleteFile(file)) {
                System.out.println("Xóa thành công");
            } else {
                System.out.println("Xóa không thành công");
            }
        } else {
            System.out.println("Thư mục không tồn tại.");
        }

        scanner.close();
    }

    private static boolean deleteFile(File file) {
        if (file.isDirectory()) {
            File[] files = file.listFiles();
            if (files != null) {
                for (File subFile : files) {
                    deleteFile(subFile);
                }
            }
        }
        return file.delete();
    }
}
