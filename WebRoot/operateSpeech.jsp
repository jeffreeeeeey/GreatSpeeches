<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!--  
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	user="root"
	password="123456"
	url="jdbc:mysql://localhost:3306/jstl?charachterEncoding=UTF-8"
	var="dataSource"
	scope="page"/>
-->

<sql:setDataSource dataSource="jdbc/jstl" var="serverDataSource"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
data source:${ serverDataSource['class'].name }
<%
	String action = request.getParameter("action");
	if("add".equals(action)){
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		Date date = request.getParameter("date");
		String content = request.getParameter("content");
	}
%>


</body>
</html>