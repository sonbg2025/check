<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
	function check_pw() {
		// 입력된 비밀번호 값 가져오기
		const mf_pw = $("#mf_pw").val();
		const mf_id = $("input[name='mf_id']").val();
		
        if (!mf_pw) {
            alert("비밀번호를 입력해주세요.");
            return;
        }
		
	    $.ajax({
	        type: "POST",
	        url: "delete_member_check",  // 서버 매핑 경로
	        data: { mf_id:mf_id, mf_pw: mf_pw },
	        success: function(response) {
	            if (response === "available") {
	                alert("삭제되었습니다.");
	                location.href = "main";
	            } else if (response === "unavailable") {
	                alert("비밀번호가 일치하지 않습니다.");
	                location.href = "my_page";
	            } else {
	                alert("확인 중 오류가 발생했습니다.");
	            }
	        },
	        error: function(xhr, status, error) {
	            alert("서버 요청 중 오류가 발생했습니다.\n" + xhr.status + " " + error);
	            console.log("에러 상세:", xhr.responseText);
	        }
	    });
	}
</script>
</head>
<body>
	<form id="frm">	
		<input type="hidden" name="mf_id" value="${mf_id}">
		<p>비밀번호를 입력해주세요</p>
		<input type="password" id="mf_pw" name="mf_pw" placeholder="비밀번호 입력">
		<div id="pw_match_msg"></div>
		<input type="button" onclick="check_pw()" value="삭제하기">
	</form>
</body>
</html>
