<%
String email=(String) session.getAttribute("uid");
%>
<%="welcome "+email%><br>
<%@include file="db.jsp" %>
<%
    String id=request.getParameter("id");
	String qr="delete from cart where id=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,id);
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("viewcart.jsp");
	rd.include(request,response);
	if(i>0)
	{
		out.println("product removed from cart");
	}
	else
	{
		out.println("something went wrong");
	}
%>