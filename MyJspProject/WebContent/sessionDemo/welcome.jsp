<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	欢迎您：
	<%
		String name = (String)session.getAttribute("uname");
		//如果用户没有登录，而是直接通过地址栏访问welcome.jsp,则必然获取到的name是null
		if(name!=null){
			out.print(name);
			
			System.out.println();
	%>	
	
	<a href = "invalidate.jsp">注销</a>
	
	<% 
		}else{//如果没有登录，应该跳转登录页面
			response.sendRedirect("login.jsp");
		}
		
	%>
</body>
</html>