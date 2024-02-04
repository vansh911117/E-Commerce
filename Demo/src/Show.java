

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Show")
public class Show extends HttpServlet {
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advance","root","vansh");
			String qr="select * from product";
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(qr);
			if(rs.next())
			{
			  out.println("<table align=center border=1px>");
			  do
			  {
				  String id=rs.getString("id");
					String name=rs.getString("name");
					int price=rs.getInt("price");
					String cat=rs.getString("cat");
					String cmp=rs.getString("cmp");
					out.println("<tr>");
					out.println("<form action=Updatepro>");
					out.println("<td>");
					out.println(id);
					out.println("<input type=hidden name=id value="+id+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=name value="+name+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=number name=price value="+price+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=cat value="+cat+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=text name=cmp value="+cmp+" />");
					out.println("</td>");
					out.println("<td>");
					out.println("<input type=submit value=Update />");
					out.println("</td>");
					
					out.println("<td>");
					out.println("</form>");
					out.println("<a href=Delete?id="+id+">Delete</a>");
					out.println("</td>");
					out.println("</tr>");
				}while(rs.next());
			  out.println("</table>");
			}else
			{
				out.println("no records found");
			}
		}catch(Exception e)
		{
			out.println(e);
		}
	}

}
