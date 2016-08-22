<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Register</title>

<script type="text/javascript">
function e_change(){
	if(document.signup.email.options[document.signup.email.selectedIndex].value=='0'){
		document.signup.email2.disabled=true;
		document.signup.email2.value="";
	}
	
	if(document.signup.email.options[document.signup.email.selectedIndex].value=='9'){
		document.signup.email2.disabled=false;
		document.signup.email2.value="";
		document.signup.email2.focus();
	}
	else{
		document.signup.email2.disabled=true;
		document.signup.email2.value = 
				document.signup.email.options[document.signup.email.selectedIndex].value;
	}
}

function checkIt(){
	var c=eval("document.signup");
	
	if(c.position[0].checked==false && c.position[1].checked==false) {
		alert("신분을 선택하세요");
		return false;
	}	
	if(c.ID.value=="") {
		alert("ID를 입력하세요");
		return false;
	}
	if(c.pw.value=="") {
		alert("패스워드를 입력하세요");
		return false;
	}
	if(c.name.value=="") {
		alert("이름을 입력하세요");
		return false;
	}	
	if(c.gender[0].checked==false && c.gender[1].checked==false) {
		alert("성별을 선택하세요");
		return false;
	}
	if(c.email1.value=="" || c.email2.value=="") {
		alert("이메일을 입력하세요");
		return false;
	}	
	if(c.phone2.value=="" || c.phone3.value=="") {
		alert("휴대폰번호를 입력하세요");
		return false;
	}
	if(isNaN(c.phone2.value) || isNaN(c.phone3.value)) { //숫자 유효성 검사
		alert("휴대폰번호를 다시 입력하세요");
		return false;
	}

	return true;
}

//아이디 중복 여부 판단
function check_id(inputID){
	//아이디 입력했는지 검사
	if(document.signup.ID.value==""){
		alert("아이디를 입력하세요");
		return;
	}
	
	url = "ConfirmID.jsp?ID=" + document.signup.ID.value;
	
	open(url, "confirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=310,height=180");
}
</script>

</head>
<body><center>
<h2>회원가입</h2>
<form name="signup" method="post" action="Register_Processing.jsp" onSubmit="return checkIt()">
	<table border="3" bordercolor="skyblue">
	<tr>
		<th bgcolor="skyblue">신분</th>
		<td><input type="radio" name="position" value="상담자">상담자
			<input type="radio" name="position" value="내담자">내담자
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">아이디</th>
		<td><input type="text" name="ID">
			<input type="button" value="중복확인" onClick="check_id(this.form)"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">비밀번호</th>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">이름</th>
		<td><input type="text" size="10" name="name"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">성별</th>
		<td><input type="radio" name="gender" value="남">남자
			<input type="radio" name="gender" value="여">여자
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">생년월일</th>
		<td>
			<select name="year">
				<%for(int i=1915; i<=2016; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> 년
			<select name="month">
				<%for(int i=1; i<=12; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> 월
			<select name="date">
				<%for(int i=1; i<=31; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> 일
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">이메일</th>
		<td><input type="text" size="6" name="email1"> @
			<input type="text" name="email2" value="" disabled> &nbsp;
			<select name="email" onchange="e_change()">
				<option value="0">선택하기</option>
				<option value="9">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="gmail.com">gmail.com</option>
				<option value="net.com">net.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">휴대폰</th>
		<td><select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="018">018</option>
			</select>
		- <input type="text" size="5" name="phone2" maxlength="4">	
		- <input type="text" size="5" name="phone3" maxlength="4">	
		</td>
	</tr>
	</table>
	<br/>
	<input type="submit" value="확인"> <input type="reset" value="취소">
	<input type="reset" value="메인으로 돌아가기" onclick="location.href='main.jsp'">
</form>
</center></body>
</html>