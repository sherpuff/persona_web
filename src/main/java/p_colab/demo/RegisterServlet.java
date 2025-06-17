package p_colab.demo;

import org.json.JSONObject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Pattern;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    PrintWriter out = response.getWriter();
    JSONObject json = new JSONObject();

    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirmPassword = request.getParameter("confirmPassword");

    // 验证输入
    if (username == null || username.length() < 4 || username.length() > 20) {
      json.put("success", false);
      json.put("message", "用户名长度需在4-20个字符之间");
      out.print(json.toString());
      return;
    }

    if (!isValidEmail(email)) {
      json.put("success", false);
      json.put("message", "请输入有效的电子邮箱地址");
      out.print(json.toString());
      return;
    }

    if (password == null || password.length() < 8) {
      json.put("success", false);
      json.put("message", "密码长度至少为8个字符");
      out.print(json.toString());
      return;
    }

    if (!password.equals(confirmPassword)) {
      json.put("success", false);
      json.put("message", "两次输入的密码不一致");
      out.print(json.toString());
      return;
    }

    try (Connection conn = DatabaseConnection.getConnection()) {
      // 检查用户名是否已存在
      if (isFieldExists(conn, "username", username)) {
        json.put("success", false);
        json.put("message", "用户名已存在");
        out.print(json.toString());
        return;
      }

      // 检查邮箱是否已存在
      if (isFieldExists(conn, "email", email)) {
        json.put("success", false);
        json.put("message", "该邮箱已被注册");
        out.print(json.toString());
        return;
      }

      // 插入新用户
      String hashedPassword = hashPassword(password); // 实际应用中应使用更安全的哈希算法
      String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

      try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
        pstmt.setString(1, username);
        pstmt.setString(2, email);
        pstmt.setString(3, hashedPassword);

        int rows = pstmt.executeUpdate();
        if (rows > 0) {
          json.put("success", true);
          json.put("message", "注册成功！3秒后将跳转到登录页面");
        } else {
          json.put("success", false);
          json.put("message", "注册失败，请重试");
        }
      }
    } catch (SQLException e) {
      e.printStackTrace();
      json.put("success", false);
      json.put("message", "数据库错误: " + e.getMessage());
    }

    out.print(json.toString());
  }

  private boolean isValidEmail(String email) {
    String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
    return email != null && Pattern.compile(emailRegex).matcher(email).matches();
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
    // 实际应用中应使用更安全的哈希算法（如BCrypt）
    // 这里为了简化使用SHA-256
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