<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script language="javascript">
	function cancle(){
		history.go(-1);
	}
	
	function checkIt(){
		if(!document.deleteForm.password.value){
			alert("비밀번호를 입력하지 않았습니다.");
			document.deleteForm.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body><center>
<b><font size="5" color="black">회원탈퇴화면입니다.</font></b><br/><br/>
<form name="deleteForm" action="Delete_Processing.jsp" method="post" onSubmit="return checkIt()">
<table border="1" bordercolor="gray">
<tr>
	<td bgcolor="gray">비밀번호</td>
	<td> <input type="password" name="password"/> </td>
</tr> </table><br/>
<input type="submit" value="탈퇴"/>
<input type="button" value="취소" onclick="cancle()"/>
</form>
</center>
</body>
</html>