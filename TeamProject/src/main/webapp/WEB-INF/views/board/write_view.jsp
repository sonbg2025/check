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
		<form method="post" action="write">
		<input type="hidden" name="b_email" value="qwer741523@naver.com">
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="b_name" size="50">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="b_title" size="50">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="10" name="b_content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="입력">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>
