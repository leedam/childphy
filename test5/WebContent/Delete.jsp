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
			alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
			document.deleteForm.password.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body><center>
<b><font size="5" color="black">ȸ��Ż��ȭ���Դϴ�.</font></b><br/><br/>
<form name="deleteForm" action="Delete_Processing.jsp" method="post" onSubmit="return checkIt()">
<table border="1" bordercolor="gray">
<tr>
	<td bgcolor="gray">��й�ȣ</td>
	<td> <input type="password" name="password"/> </td>
</tr> </table><br/>
<input type="submit" value="Ż��"/>
<input type="button" value="���" onclick="cancle()"/>
</form>
</center>
</body>
</html>