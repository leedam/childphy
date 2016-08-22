<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.lang.String" %>


<%
	request.setCharacterEncoding("euc-kr");

	String position="";
	String id="";
	String password="";
	String name="";
	String gender="";
	String birthday="";
	String email="";
	String phone="";
	
	try{
		position = request.getParameter("position");
		id = request.getParameter("ID");
		password = request.getParameter("pw");
		name = request.getParameter("name");
		gender = request.getParameter("gender");
		birthday = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("date");
		email = request.getParameter("email1") + "@" + request.getParameter("email");
		phone = request.getParameter("phone1") + "-" + request.getParameter("phone2") + "-" + request.getParameter("phone3");
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:useBean id="member" class="REGISTER.member"/>
<jsp:useBean id="add" class="REGISTER.registerDAO"/>
<jsp:setProperty name="member" property="position" value="<%=position%>"/>
<jsp:setProperty name="member" property="id" value="<%=id%>"/>
<jsp:setProperty name="member" property="password" value="<%=password%>"/>
<jsp:setProperty name="member" property="name" value="<%=name%>"/>
<jsp:setProperty name="member" property="gender" value="<%=gender%>"/>
<jsp:setProperty name="member" property="birthday" value="<%=birthday%>"/>
<jsp:setProperty name="member" property="email" value="<%=email%>"/>
<jsp:setProperty name="member" property="phone" value="<%=phone%>"/>

<%
	boolean result = add.addDB(member);
	if(result==true)
		 response.sendRedirect("Register_Success.jsp");
	else
		 response.sendRedirect("Register.jsp");
	
%>