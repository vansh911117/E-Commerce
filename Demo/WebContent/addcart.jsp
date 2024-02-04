<%@include file="db.jsp"  %>
<%
String email=(String)session.getAttribute("uid");
String id=request.getParameter("id");
String name=request.getParameter("name");
String p=request.getParameter("price");
int price=Integer.parseInt(p);
String cat=request.getParameter("cat");
String cmp=request.getParameter("cmp");
String qr="insert into cart values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,id);
ps.setString(2,name);
ps.setInt(3,price);
ps.setString(4,cat);
ps.setString(5,cmp);
ps.setString(6,email);
int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("Uhome.jsp");
rd.include(request,response);
if(i>0)
{
	out.println("<script>window.alert('sucessfully added to cart');</script>");
}else{
	out.println("<script>window.alert('some issue please try again leter');</script>");}
%>