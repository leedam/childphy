<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Counselee</title>
</head>
<body>
<center><br/><br/>
	<b><font size="50" color="skyblue">�Ƶ��ɸ����</font></b><br/><br/>
	<b><font size="30">My page(������)</font></b><br/>
	<b><font size="20" color="red">
		<%=session.getAttribute("sessionId")%></font>�� ȯ���մϴ�.^^</b><br/><br/>
	
		<input type="button" value="�ɸ��˻� ����" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="����� �Ұ�" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="�˻��ϱ�" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="����̷�" style="width:120px; height:50px;"> <br/><br/>
		
		<input type="button" value="�α׾ƿ�" style="width:100px; height:30px;" onClick="location.href='Logout.jsp'">
		<input type="button" value="�����ϱ�" style="width:100px; height:30px;" onClick="location.href='Modify.jsp'"> 
		<input type="button" value="Ż���ϱ�" style="width:100px; height:30px;" onClick="location.href='Delete.jsp'">
</center>
</body>
</html>