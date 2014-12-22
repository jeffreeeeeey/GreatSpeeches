<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String action = (String)request.getAttribute("action");
	boolean isEdit = "edit".equals(action);
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<form action="operateSpeech" method="post">
		<input type="hidden" name="action" value=<%= isEdit?"save":"add" %>>
	 	<input type="hidden" name="id" value="<%=isEdit ? "" : "" %>"> 
	 	<h1><%= isEdit ? "Edit Speech" : "Add New Speech" %></h1>
	 	<table>
	 		<tbody>
	 			<tr>
	 				<td>Title</td>
	 				<td><input type="text" name="title"></td>
	 			</tr>
	 			<tr>
	 				<td>Author</td>
	 				<td><input type="text" name="author"></td>
	 			</tr>
	 			<tr>
	 				<td>Date</td>
	 				<td><input type="text" name="date"></td>
	 			</tr>
	 			<tr>
	 				<td>content</td>
	 				<td><textarea name="content" rows="10" cols="20"></textarea></td>
	 			</tr>
	 			<tr>
	 				<td>&nbsp;</td>
	 				<td><input type="button" name="addSpeechBtn" value="Add Speech"></td>
	 			</tr>
	 		</tbody>
	 	</table>
	</form>
</div>

</body>
</html>