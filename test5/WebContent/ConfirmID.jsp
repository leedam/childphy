<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="REGISTER.registerDAO"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID �ߺ�Ȯ��</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	registerDAO registerdao = new registerDAO();
	
	boolean result = registerdao.confirmID(id);
	
	if(id=="") result=false;
	
	if(result==false){%>
		<b>"<font color="red"><%=id%></font>"�� ����Ҽ������ϴ�.</b>
		<form name="checkForm" method="post" action="ConfirmID.jsp">
		<b>�ٸ� ���̵� �����ϼ���.</b><br/><br/>
		<input type="text" name="ID"/>
		<input type="submit" value="ID�ߺ�Ȯ��"/>
		</form>
		<%
	}
	else {
	%><center>
	<b>�Է��Ͻ� <font color="red"><%=id%></font>��<br/>
	����ϽǼ� �ִ� ID�Դϴ�.</b><br/><br/>
	<input type="button" value="�ݱ�" onclick="setID()">
	</center>
	<%}%>
	
<script language="javascript">
	function setID(){
		opener.document.signup.ID.value="<%=id%>";
		self.close();
	}
</script>
	
</body>
</html>