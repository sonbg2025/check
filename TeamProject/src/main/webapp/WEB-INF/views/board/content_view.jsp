<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="500" border="1">
		<form method="post" action="modify">
<%-- 			<input type="hidden" name="board" value="${content_view.b_id}"> --%>
			<input type="hidden" name="b_id" value="${content_view.b_id}">
			<tr>
				<td>번호</td>
				<td>
<%-- 					${content_view.board} --%>
					${content_view.b_id}
				</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>
					${content_view.b_hit}
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
<%-- 					${content_view.boardName} --%>
					<input type="text" name="b_name" value="${content_view.b_name}">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
<%-- 					${content_view.boardTitle} --%>
					<input type="text" name=b_title value="${content_view.b_title}">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
<%-- 					${content_view.boardContent} --%>
					<input type="text" name="b_content" value="${content_view.b_content}">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정">
					&nbsp;&nbsp;<a href="list">목록보기</a>
					&nbsp;&nbsp;<a href="delete?b_id=${content_view.b_id}">삭제</a>
				</td>
			</tr>
		</form>
	</table>
</body>
</html>
