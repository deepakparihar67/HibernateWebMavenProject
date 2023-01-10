<jsp:useBean id="rd" class="pp.Rdao"></jsp:useBean>
<jsp:useBean id="p" class="pp.Product"></jsp:useBean>
<jsp:setProperty property="*" name="p"/>
<%
int i=rd.addProduct(p);
response.sendRedirect("show.jsp");
%>
<%=i+" product added"%>