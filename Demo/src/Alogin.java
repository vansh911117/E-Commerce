

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Alogin")
public class Alogin extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
        String id = request.getParameter("id");
        String pwd= request.getParameter("pwd");
        if(id.equals("vansh") && pwd.equals("12345"))
        {
        	response.sendRedirect("adminhome.html");
        }
        else
        {
        	out.println("invalid id and password");
        }
	}

}
