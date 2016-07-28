<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
</head>
<body><center>
	<form name="inform" method="POST" action="Login.jsp">
	
	<b><font size="50" color="skyblue">아동심리상담</font></b><br/><br/>
	
	<table border="0">
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr height="30px">
		<td align="center"><b>아이디</b></td>
		<td><input type="text" name="ID"></td>
	</tr>
	<tr height="30px">
		<td align="center"><b>비밀번호</b></td>
		<td><input type="password" name="PW"></td>
	</tr>
	</table><br/>
	
	<input type="submit" value="로그인" style="width:100px; height:30px;">	
	<input type="button" value="회원가입" onclick="javascript:window.location='Register.jsp'" style="width:100px; height:30px;">
	</form>
	</center>
</body>
</html>