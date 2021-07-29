<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="student" class="com.koreait.member.Student"/>
<jsp:setProperty property="id" name="student"/>
<jsp:setProperty property="name" name="student"/>
<jsp:setProperty property="gender" name="student"/>
<jsp:setProperty property="age" name="student"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<p>번호 : <jsp:getProperty property="id" name="student"/></p>
<p>이름 : <jsp:getProperty property="name" name="student"/></p>
<p>성별 : <jsp:getProperty property="gender" name="student"/></p>
<p>나이 : <jsp:getProperty property="age" name="student"/></p>
</body>
</html>