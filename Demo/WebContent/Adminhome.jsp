<%
String id=(String)session.getAttribute("id");
%>
<%="welcome "+id %>
<br><br><br><br>
<a href="addpro.html">Add product</a><br><br>
<a href="deletepro.html">Delete product</a><br><br>
<a href="updatepro.html">Update product</a><br><br>
<a href="show.jsp">Show product</a><br><br>
<a href="index.html">Logout</a>