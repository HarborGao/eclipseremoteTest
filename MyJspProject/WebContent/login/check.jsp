<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		if(name.equals("zs") && pwd.equals("abc")){//假设zs abc
			//response.sendRedirect("success.jsp");//页面跳转：重定向，导致数据丢失
			//页面跳转，请求转发,可以获取到数据，并且地址栏没有改变（仍然保留转发时页面check.jsp）
			request.getRequestDispatcher("success.jsp").forward(request,response);
		}else{
			//登陆失败
			out.print("用户名或密码有误");
		}
	%>
</body>
</html>