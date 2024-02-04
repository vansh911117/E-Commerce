<%@include file="db.jsp"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="update product set name=?,price=?,cat=?,cmp=? where id=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(5,id);
ps.setString(1,name);
ps.setInt(2,price);
ps.setString(3,cat);
ps.setString(4,cmp);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
rd.include(request,response);
if(i>0)
{
	out.println(i+" product added sucessfully");
}else{
	out.println("not updated");
}
%>