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
	<b><font size="50" color="skyblue">아동심리상담</font></b><br/><br/>
	<b><font size="30">My page(내담자)</font></b><br/>
	<b><font size="20" color="red">
		<%=session.getAttribute("sessionId")%></font>님 환영합니다.^^</b><br/><br/>
	
		<input type="button" value="심리검사 설명" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="상담자 소개" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="검사하기" style="width:120px; height:50px;"> <br/><br/>
		<input type="button" value="상담이력" style="width:120px; height:50px;"> <br/><br/>
		
		<input type="button" value="로그아웃" style="width:100px; height:30px;" onClick="location.href='Logout.jsp'">
		<input type="button" value="수정하기" style="width:100px; height:30px;" onClick="location.href='Modify.jsp'"> 
		<input type="button" value="탈퇴하기" style="width:100px; height:30px;" onClick="location.href='Delete.jsp'">
</center>
</body>
</html>