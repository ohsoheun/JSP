<%@page import="com.myweb.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserVO vo = new UserVO();
	vo.setId("hhh123");
	vo.setName("홍길숙");
	vo.setEmail("hhh@naver.com");
	
	request.setAttribute("vo", vo); //리퀘스트에 강제 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디: ${requestScope.vo.id }<br/>
	이름: ${requestScope.vo.name }<br/>
	이메일: ${requestScope.vo.email }<br/>
	
	<!-- requestScope는 생략을 하고 많이 사용합니다 -->
	${vo.id }<br>
	${vo.name }<br>
	${vo.email }<br>
	
</body>
</html>