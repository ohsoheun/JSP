<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp" %>

<style>
	.btn {
          
	border: 0; 
	border-radius: 0; /*윤곽 0*/
	padding: 5px 10px; 
	margin: 20px 0px;
        }
</style>

<div align="center" class="div_center">

	<h3>게시글 내용 보기</h3>
	<hr>
	<table border="1" width="500">
		<tr>
			<td width="20%">글번호</td>
			<td width="30%">${vo.bno}</td>
			
			<td width="20%">조회수</td>
			<td width="30%">${vo.hit }</td>
		</tr>
		<tr>
			<td width="20%">작성자</td>
			<td width="30%">${vo.writer }</td>
			
			<td width="20%">작성일</td>
			<td width="30%"> <fmt:formatDate value="${vo.regdate }" pattern="yyyy년 MM월dd일"/></td>
		</tr>
		
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3" width="30%">${vo.title}</td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" width="30%" height="120px">${vo.content }</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" onclick="location.href='list.board' ">&nbsp;&nbsp;
				<%-- 컨트롤러를 타고 목록으로 이동 --%>
				<input type="button" value="수정" onclick= "location.href='modify.board?bno=${vo.bno}&writer=${vo.writer }'">&nbsp;&nbsp;
				<%--커트롤러로가는데 bno를 필요로 하기에 같이 실어서 보내주기 --%>
				<input type="button" value="삭제" onclick="location.href='delete.board?bno=${vo.bno}&writer=${vo.writer }'">&nbsp;&nbsp;
				<%-- onclick="location.href='delete.board?bno=${vo.bno}'" -- get방식으로 값보내기--%>
				
			</td>
		</tr>
	</table>
	
	
	

	

</div>




<%@ include file="../include/footer.jsp" %>

