<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="sales.model.NumberBean"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%	
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		double sales = Double.parseDouble(request.getParameter("sales"));
		
		NumberBean value = new NumberBean(name, code, sales);
		value.ComputeGross();
		value.ComputeComm();
		value.ComputeTakeHome();
		
		request.setAttribute("number", value);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
		dispatcher.forward(request, response); 
	%>
</body>
</html>