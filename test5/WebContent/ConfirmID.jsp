<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="REGISTER.registerDAO"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID 중복확인</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	registerDAO registerdao = new registerDAO();
	
	boolean result = registerdao.confirmID(id);
	
	if(id=="") result=false;
	
	if(result==false){%>
		<b>"<font color="red"><%=id%></font>"는 사용할수없습니다.</b>
		<form name="checkForm" method="post" action="ConfirmID.jsp">
		<b>다른 아이디를 선택하세요.</b><br/><br/>
		<input type="text" name="ID"/>
		<input type="submit" value="ID중복확인"/>
		</form>
		<%
	}
	else {
	%><center>
	<b>입력하신 <font color="red"><%=id%></font>는<br/>
	사용하실수 있는 ID입니다.</b><br/><br/>
	<input type="button" value="닫기" onclick="setID()">
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