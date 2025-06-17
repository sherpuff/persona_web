package p_colab.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
  static {
    // 显式加载 MySQL JDBC 驱动
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      System.out.println("MySQL JDBC 驱动加载成功");
    } catch (ClassNotFoundException e) {
      System.err.println("错误: 找不到 MySQL JDBC 驱动");
      e.printStackTrace();
      throw new ExceptionInInitializerError(e);
    }
  }

  private static final String DB_URL = "jdbc:mysql://localhost:3306/persona_db?useSSL=false&serverTimezone=UTC";
  private static final String DB_USER = "root";
  private static final String DB_PASSWORD = "62442";

  public static Connection getConnection() throws SQLException {
    return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
  }
}