<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="REGISTER.registerDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("sessionId");
	String password = request.getParameter("password");

	registerDAO registerdao = new registerDAO();
	
	boolean result = registerdao.deleteDB(id,password);
	
	if(result) {
		session.invalidate();
%>
<center>
<form name="deleteForm" method="POST" action="main.jsp">
	<b><h2>ȸ�������� �����Ǿ����ϴ�.</h2></b>
	Ȯ���� �����ּ���~ <br/>
	<input type="submit" value="Ȯ��"/>
</form>
	<%} else { %>
		<script>
		alert("��й�ȣ�� ���� �ʽ��ϴ�.");
		history.go(-1);
		</script>
	<%} %>
</center>
</body>
</html>