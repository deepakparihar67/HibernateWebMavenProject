<%@page import="pp.Product" %>
<%@page import="java.util.List" %>
<jsp:useBean id="rd" class="pp.Rdao"></jsp:useBean>
<table align="center" border="1px">
<%
List<Product> al=rd.showProduct();
%>
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Category</th>
		<th>Company</th>
		<th colspan="2">Action</th>
	</tr>
<%
for(Product p:al)
{
	%>	
		<tr>
		<td><%=p.getId() %></td>
		<td><%=p.getName() %></td>
		<td><%=p.getPrice() %></td>
		<td><%=p.getCategory() %></td>
		<td><%=p.getCompany() %></td>
		<td><a href="DeleteProduct.jsp?id=<%=p.getId()%>">Delete</a></td>
		<td><a href="UpdateProduct.jsp?id=<%=p.getId()%>">Update</a></td>
		</tr>
	<%
}
%>
</table>