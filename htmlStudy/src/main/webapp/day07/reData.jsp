<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//하나의 이름으로 자료가 전달될 때 : request.getParameter메서드로 받는다
	String irum = request.getParameter("irum");
	String address =  request.getParameter("address");
	//하나의 동일한 이름으로 여러개의 자료가 전달 될 떄 : request.getParameterValues 메서드로 받고 String배열에 저장.
	String[] hobby = request.getParameterValues("hobby");
	String gender = request.getParameter("gender");
//	String[] gender = request.getParameterValues("gender");
	String [] likeList = request.getParameterValues("likeList");
	


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
전달받은 이름 : <%=irum %><br />
전달받은 주소 : <%=address %><br />
<%
	for( int i = 0; i < hobby.length; i++){ //전달받은 취미(hobby) 자료의 개수만큼 반복하세요 ... 
		out.println("전달받은 취미 " + (i+1) + " : " + hobby[i] + "<br />");
	}

%>

전달받은 성별 : <%= gender %><br />
<%
	for( int i = 0; i < likeList.length; i++){ //전달받은 likeList 자료의 개수만큼 반복하세요 ... 
		out.println("전달받은 좋아하는 것 " + (i+1) + " : " + likeList[i] + "<br />");
	}

%>

</body>
</html>