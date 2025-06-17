package p_colab.demo;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;

@WebServlet("/CheckLoginStatus")
public class CheckLoginServlet extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException {

    response.setContentType("application/json");
    PrintWriter out = response.getWriter();
    JSONObject json = new JSONObject();

    HttpSession session = request.getSession(false);

    if (session != null && session.getAttribute("username") != null) {
      json.put("loggedIn", true);
      json.put("username", session.getAttribute("username"));
      json.put("isAdmin", session.getAttribute("isAdmin"));
    } else {
      json.put("loggedIn", false);
    }

    out.print(json.toString());
  }
}