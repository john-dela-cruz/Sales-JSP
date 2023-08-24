<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compute Sales</title>
</head>
<body>
	<form action='computesales.jsp' method='post'>
		<p>Name: 
			<input type='text' name='name' size='30' 
				required="required"/>
		</p>
		<p>Code: 
			<select name='code'>
				<option value='A'>A</option>
				<option value='B'>B</option>
				<option value='C'>C</option>
			</select>
		</p>
		<p>Sales: 
			<input type='number' name='sales'
				required="required" min='0'/>
		</p>
		<p>
			<input type="submit" value='SUBMIT'/>
		</p>
	</form>
</body>
</html>