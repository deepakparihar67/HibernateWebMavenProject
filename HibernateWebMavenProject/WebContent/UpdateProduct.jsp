
<jsp:useBean id="p" class="pp.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>
<%
String ids=request.getParameter("id");
int id=Integer.parseInt(ids);
%>
<form action="UpdPro.jsp">
Id<input type="number" name="id" value="<%=p.getId()%>"/><br/>
Name<input type="text" name="name" /><br/>
Price<input type="number" name="price" ><br/>
Category<input type="text" name="category" /><br/>
Company<input type="text" name="company" /><br/>
<input type="submit" value="Update" />
</form>
