<jsp:useBean id="rd" class="pp.Rdao"></jsp:useBean>
<%
String ids=request.getParameter("id");
int id=Integer.parseInt(ids);
rd.deleteProduct(id);
response.sendRedirect("show.jsp");
%>
