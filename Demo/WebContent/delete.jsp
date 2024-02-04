<%@include file="db.jsp" %>
<%
String id=request.getParameter("id");
String qr="delete from product where id=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
rd.include(request,response);
if(i>0)
{
	out.println(i+" record deleted");
}else
{
	out.println("not deleted");
}
%>