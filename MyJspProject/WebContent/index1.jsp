<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%="当前项目的虚拟路径"+application.getContextPath()+"<br/>"%>
	<%="虚拟路径对应的绝对路径"+application.getRealPath("/MyJspProject")+"<br/>"%>

	<%!
		public String bookName;	//全局变量
		public void init()	/*java注释*/
		{
			Date date = new Date();
			bookName = "java书"+date;
		}
	%>
	====hello index1 你好====
	<%
		String name = "zhangsan";
		out.print("<font color='red' size='30px'>hello.</font>.." + name + "<br/>");
		init();
	%>
	<%="hello..."+bookName %>
	<!-- html注释 -->
	
	<%-- jsp注释 --%>
</body>
</html>