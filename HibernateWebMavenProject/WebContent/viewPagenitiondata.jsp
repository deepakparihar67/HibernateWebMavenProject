<jsp:useBean id="rd" class="pp.Rdao"></jsp:useBean>
<%@page import="pp.Product" %>
<%@page import="java.util.List" %>
<table align="center" border="1px">
<%
String id=request.getParameter("pid");
int pid=Integer.parseInt(id);
int total=5;
if(pid==1)
{
	pid=pid-1;
}else
{
	pid=pid-1;
	pid=pid*total;
}
List<Product> al=rd.showByPagenation(pid, total);
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
int t=rd.showProduct().size();
int c=1;
%>
</table>
<%
for(int i=1;i<=t;i=i+5)
{
	%>
	<a href="viewPagenitiondata.jsp?pid=<%=c %>"><%=c %></a>
	<%
	c++;
}
%>
 