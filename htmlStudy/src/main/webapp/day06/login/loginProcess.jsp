<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	넘겨준 아이디 : <%= request.getParameter("id") %> <br />
	넘겨준 비밀번호 : <%= request.getParameter("pwd") %> <br /> 
</body>
</html>