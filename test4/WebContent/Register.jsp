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
	var i=0;

	if(c.ID.value=="") {
		alert("ddfs");
		i++;
	}
	
	if(i>0) return false;
	else return true;
}

function check_pw(){
	var pw_path=eval("document.signup.pw.value");
	var re_pw_path=eval("document.signup.re_pw.value");
	
	if(pw_path==null || re_pw_path==null)
		document.signup.pw_result.value="��й�ȣ�� �Է��ϼ���";
	else if(!(pw.equals(pw_check)))
		document.signup.pw_result.value="��й�ȣ�� �ٸ��ϴ�.";
	else
		document.signup.pw_result.value="��й�ȣ�� �����մϴ�.";
	return ;
}
</script>

</head>
<body><center>
<h2>ȸ������</h2>
<form name="signup" method="post" action="Register_Processing.jsp" onsubmit="return checkIt()">
	<table border="3" bordercolor="skyblue">
	<tr>
		<th bgcolor="skyblue">�ź�</th>
		<td><input type="radio" name="position" value="�����">�����
			<input type="radio" name="position" value="������">������
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">���̵�</th>
		<td><input type="text" name="ID">
			<input type="button" value="�ߺ�Ȯ��"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">��й�ȣ</th>
		<td><input type="password" name="pw"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">��й�ȣ Ȯ��</th>
		<td><input type="password" name="re_pw" onblur="check_pw()">&nbsp;
		<input type="text" style="border-width:0px;" name="pw_result" value="��й�ȣ�� �Է��ϼ���" readonly="readonly"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">�̸�</th>
		<td><input type="text" size="10" name="name"></td>
	</tr>
	<tr>
		<th bgcolor="skyblue">����</th>
		<td><input type="radio" name="gender" value="��">����
			<input type="radio" name="gender" value="��">����
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">����</th>
		<td>
			<select name="year">
				<%for(int i=1915; i<=2016; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> ��
			<select name="month">
				<%for(int i=1; i<=12; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> ��
			<select name="date">
				<%for(int i=1; i<=31; i++){ %>
					<option value="<%=i%>"><%=i%></option>
				<%}%>
			</select> ��
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">�̸���</th>
		<td><input type="text" size="6" name="email1"> @
			<input type="text" name="email2" value="" disabled> &nbsp;
			<select name="email" onchange="e_change()">
				<option value="0">�����ϱ�</option>
				<option value="9">�����Է�</option>
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="gmail.com">gmail.com</option>
				<option value="net.com">net.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<th bgcolor="skyblue">�޴���</th>
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
	<input type="submit" value="Ȯ��"> <input type="reset" value="���" onclick="location.href='main.jsp'">
</form>
</center></body>
</html>