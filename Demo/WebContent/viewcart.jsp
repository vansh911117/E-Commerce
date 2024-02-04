<%String email=(String)session.getAttribute("uid");  %>
<%="welcome "+email%>
<a href="Logout">Logout</a>
<%int total=0; %>
<br>
<%@include file="db.jsp" %>
<%
String qr="select * from cart where email=?";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,email);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	total=0;
	do{
		String id=rs.getString("id");
		String name=rs.getString("name");
		int price=rs.getInt("price");
		String cat=rs.getString("cat");
		String cmp=rs.getString("cmp");
		total=total+price;
		%>
		<div style="height: 300px;width: 300px;background-color: pink;color: black;float: left;margin: 2px;border:1px solid black;text-align: center;">
			<h4>Pid : <%=id %></h4>
			<h2>Name : <%=name %></h2>
			<h4>Price : <%=price %></h4>
			<h4>Category : <%=cat %></h4>
			<h4>Company : <%=cmp %></h4>
		    <a href="removecart.jsp?id=<%=id%>">Remove</a>
		    </div>
		<%
	}while(rs.next());
}else
{
	out.println("no records found");
}
%>
<h2>Total is <%=total %></h2>
<br>
<center><a href="https://www.paypal.com/in/signin">Checkout and pay</a></center>