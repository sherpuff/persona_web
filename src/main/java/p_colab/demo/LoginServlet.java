package p_colab.demo;

import org.json.JSONObject;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  static {
    // 确保驱动加载
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      System.out.println("LoginServlet: MySQL JDBC 驱动加载成功");
    } catch (ClassNotFoundException e) {
      System.err.println("LoginServlet: 错误: 找不到 MySQL JDBC 驱动");
      e.printStackTrace();
    }
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    JSONObject json = new JSONObject();

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username == null || password == null || username.isEmpty() || password.isEmpty()) {
      json.put("success", false);
      json.put("message", "用户名和密码不能为空");
      out.print(json.toString());
      return;
    }

    try (Connection conn = DatabaseConnection.getConnection()) {
      // 计算密码哈希值（与注册时相同）
      String hashedPassword = hashPassword(password);

      // 查询用户表
      String sql = "SELECT * FROM users WHERE username = ? AND password = ?";

      try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
        pstmt.setString(1, username);
        pstmt.setString(2, hashedPassword);

        try (ResultSet rs = pstmt.executeQuery()) {
          if (rs.next()) {
            // 登录成功
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // 设置会话超时时间（30分钟）
            session.setMaxInactiveInterval(30 * 60);

            json.put("success", true);
          } else {
            json.put("success", false);

            // 检查用户是否存在
            String checkSql = "SELECT * FROM users WHERE username = ?";
            try (PreparedStatement checkStmt = conn.prepareStatement(checkSql)) {
              checkStmt.setString(1, username);
              try (ResultSet checkRs = checkStmt.executeQuery()) {
                if (checkRs.next()) {
                  json.put("message", "密码错误，请重试");
                } else {
                  json.put("message", "用户未注册");
                }
              }
            }
          }
        }
      }
    } catch (SQLException e) {
      System.err.println("登录数据库错误:");
      e.printStackTrace();
      json.put("success", false);
      json.put("message", "数据库错误: " + e.getMessage());
    } catch (Exception e) {
      System.err.println("登录未知错误:");
      e.printStackTrace();
      json.put("success", false);
      json.put("message", "系统错误: " + e.getMessage());
    }

    out.print(json.toString());
  }

  private boolean isFieldExists(Connection conn, String field, String value) throws SQLException {
    String sql = "SELECT id FROM users WHERE " + field + " = ?";
    try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
      pstmt.setString(1, value);
      try (ResultSet rs = pstmt.executeQuery()) {
        return rs.next();
      }
    }
  }

  private String hashPassword(String password) {
    // 使用与注册相同的SHA-256哈希算法
    try {
      java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
      byte[] hash = md.digest(password.getBytes("UTF-8"));
      StringBuilder hexString = new StringBuilder();

      for (byte b : hash) {
        String hex = Integer.toHexString(0xff & b);
        if (hex.length() == 1)
          hexString.append('0');
        hexString.append(hex);
      }

      return hexString.toString();
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }
}