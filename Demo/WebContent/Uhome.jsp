<%
String email=(String)session.getAttribute("uid");
%>
<%="welcome "+email%>
<br>
<hr>
<a href="viewcart.jsp">View Cart Items</a>
<br>
<hr>
<a href="Logout">Log-out</a>
<hr>
<%@include file="db.jsp"%>
<%
String qr="select * from product";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	do{
		String id=rs.getString("id");
		String name=rs.getString("name");
		int price=rs.getInt("price");
		String cat=rs.getString("cat");
		String cmp=rs.getString("cmp");
		%>
		<div style="height: 300px;width: 300px;background-color: pink;color: black;float: left;margin: 2px;border:1px solid black;text-align: center;">
			<h4>Pid : <%=id %></h4>
			<h2>Name : <%=name %></h2>
			<h4>Price : <%=price %></h4>
			<h4>Category : <%=cat %></h4>
			<h4>Company : <%=cmp %></h4>
			<a href="https://www.paypal.com/in/signin">Buy Now</a><br><br>
			<a href="addcart.jsp?id=<%= id %>&name=<%= name %>&price=<%= price %>&cat=<%= cat %>&cmp=<%= cmp %>">Add To Cart</a>
</div>
			<%
	}while(rs.next());
}else
{
	out.println("no product found");
}
%>