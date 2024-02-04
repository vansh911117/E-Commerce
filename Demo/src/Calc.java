

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String n1=request.getParameter("n1");
		String n2=request.getParameter("n2");
		String ch=request.getParameter("ch");
		int a=Integer.parseInt(n1);
		int b=Integer.parseInt(n2);
		switch(ch)
		{
		case "Add":
			out.println("add is "+(a+b));
			break;

		case "Sub":
			out.println("Sub is "+(a-b));
			break;

		case "Mul":
			out.println("mul is "+(a*b));
			break;

		case "Div":
			try{
			out.println("div is "+(a/b));
			}catch(Exception e)
			{
				out.println("cant divide by zero");
			}
			break;
		}
	}

}
