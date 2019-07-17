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
			//只有登录成功，session中才会存在uname/upwd
			session.setAttribute("uname", name);
			session.setAttribute("upwd", pwd);
			System.out.println("sessionId"+session.getId());
			Cookie cookie = new Cookie("uname",name);
			response.addCookie(cookie);
			//session.setMaxInactiveInterval(10);
			request.getRequestDispatcher("welcome.jsp").forward(request,response);
			
		}else{
			//登陆失败
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>