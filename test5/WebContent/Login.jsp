<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="LOGIN.confirm_login" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String id = request.getParameter("ID");
	String pw = request.getParameter("PW");
	
	confirm_login confrim = new confirm_login();
	boolean result = confrim.loginCheck(id, pw);
	String position = confrim.getPosition();
	
	if(result){
		session.setAttribute("sessionId", id);
		session.setAttribute("sessionPw", pw);
		session.setAttribute("sessionPosi", confrim.getPosition());
		
	
		if(position.equals("�����"))
			response.sendRedirect("Counselor.jsp");
		else if(position.equals("������"))
			response.sendRedirect("Counselee.jsp");
	}
	else { %>
		<script>
			alert("���̵�� ��й�ȣ�� ���� �ʽ��ϴ�.");
			history.go(-1);
		</script>
	<%}%>