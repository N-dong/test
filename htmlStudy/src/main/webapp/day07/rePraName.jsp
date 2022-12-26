<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Enumeration<String> paraNames  = request.getParameterNames(); // 상자 이름들 구하기
while( paraNames.hasMoreElements()){ // 상자 이름들 만큼 반복하기
	String pramBoxName = paraNames.nextElement() ;
	
//	out.println( "상자이름 : " + pramBoxName + "===> 데이터 :" + request.getParameter(pramBoxName) + "<br />" );
	String[] paraValues = request.getParameterValues(pramBoxName);
	// 같은 파라메터 이름으로 한 개의 자료가 넘어오든, 아니면 같은 파라메터 이름으로 n 개의 자료가 넘어오든 상관없이 다 받을 수 있는 방법

	
	for(int i = 0; i< paraValues.length; i++){ // 하나의 파라메터명에 자료 개수만큼 반복
		out.println( "상자이름 : " + pramBoxName + "===> 데이터 :" + paraValues[i] + "<br />" );
	}
}
	

%>


</body>
</html>