<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.String" %>

<%
	request.setCharacterEncoding("euc-kr");

	String id="";
	String password="";
	String email="";
	String phone="";
	
	try{
		id = (String)session.getAttribute("sessionId");
		
		if(password==null) password = (String)session.getAttribute("sessionPw");
		else password = request.getParameter("pw");
		
		email = request.getParameter("email");
		phone = request.getParameter("phone");
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:useBean id="member" class="REGISTER.member"/>
<jsp:useBean id="modify" class="REGISTER.registerDAO"/>
<jsp:setProperty name="member" property="id" value="<%=id%>"/>
<jsp:setProperty name="member" property="password" value="<%=password%>"/>
<jsp:setProperty name="member" property="email" value="<%=email%>"/>
<jsp:setProperty name="member" property="phone" value="<%=phone%>"/>

<%
	modify.updateDB(member);
	response.sendRedirect("Modify_Success.jsp");
%>
