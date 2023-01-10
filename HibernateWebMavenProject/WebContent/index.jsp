<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="AddProduct.jsp">
Id<input type="number" name="id" /><br/>
Name<input type="text" name="name" /><br/>
Price<input type="number" name="price" ><br/>
Category<input type="text" name="category" /><br/>
Company<input type="text" name="company" /><br/>
<input type="submit" />
</form>
<a href="show.jsp">show data</a>
<a href="viewPagenitiondata.jsp?pid=1">View data</a>
</body>
</html>