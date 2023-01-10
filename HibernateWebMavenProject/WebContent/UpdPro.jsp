<jsp:useBean id="rd" class="pp.Rdao"></jsp:useBean>
<jsp:useBean id="p" class="pp.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>
<%
String ids=request.getParameter("id");
int id=Integer.parseInt(ids);
rd.updateProduct(p);
response.sendRedirect("show.jsp");
%>
