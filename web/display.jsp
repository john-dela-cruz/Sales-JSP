<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="sales.model.NumberBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compute Sales</title>
</head>
<body>
	<% 
		NumberBean value = (NumberBean)request.getAttribute("number");
	%>
	
	<p>Employee Name: <%= value.getName() %></p>
	<p>Sales Code: <%= value.getCode() %></p>
	<p>Sales Amount: Php <%=  value.getSales() %> </p>
	<p>Sales Gross Commission: Php <%= value.getGross() %></p>
	<p>Sales Commission: Php <%= value.getComm() %> </p>
	<p>Take Home Pay: Php <%= value.getTakeHome() %> </p>
	<form action='index.jsp'>
		<p><input type='submit' value='<< GO BACK >>'/></p>
	</form>
	
</body>
</html>