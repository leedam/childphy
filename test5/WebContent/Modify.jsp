<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="REGISTER.registerDAO" %>
<%@ page import="REGISTER.member"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

function checkIt(){
	var c=eval("document.modify");
	
	
	return true;
}

function cancle(){
	history.go(-1);
}

</script>

</head>
<body>
<%
	String id = (String)session.getAttribute("sessionId");
	member m = new member();
	registerDAO registerdao = new registerDAO();
	registerdao.loadDB(id, m);
%>
<center>
<b><font size="5" color="black">회원정보 수정</font></b><br/><br/>
<form action="Modify_Processing.jsp" method="post" name="modify" onSubmit="return checkIt()">
	<table border="3" bordercolor="skyblue">
	<tr>
		<th bgcolor="skyblue">신분</th>
		<td bgcolor="skyblue"><%=m.getPosition() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">아이디</th>
		<td bgcolor="skyblue"><%=m.getId() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">이름</th>
		<td bgcolor="skyblue"><%=m.getName() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">성별</th>
		<td bgcolor="skyblue"><%=m.getGender() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">생년월일</th>
		<td bgcolor="skyblue"><%=m.getBirthday() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">원래 비밀번호</th>
		<td bgcolor="skyblue"><%=m.getPassword() %></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">변경 할 비밀번호</th>
		<td><input type="password" name="pw"><br/>
		<font style="border-width:0px; font-size:11px">*변경을 원할 경우에 비밀번호를 입력해주세요</font>
		</td>
		
	</tr>
	<tr>
		<th bgcolor="skyblue">이메일</th>
		<td><input type="text" name="email" value="<%=m.getEmail() %>"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">휴대폰</th>
		<td><input type="text" name="phone" maxlength="13" value="<%=m.getPhone() %>"></td>
	</tr>
	</table><br/>
	<input type="submit" value="수정하기">&nbsp;
	<input type="reset" value="돌아가기" onclick="cancle()">
</form>
</center>
</body>
</html>