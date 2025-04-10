<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
	function fn_submit() {
		 const form = document.getElementById("frm");
	
		    // 유효성 검사 실행
		    if (!form.checkValidity()) {
		        form.reportValidity();  // 브라우저 기본 경고창 띄움
		        return;  // 중단
		    }
		    
	   const formData = $("#frm").serialize();
	
	   $.ajax({
	       type: "post",
	       data: formData,
	       url: "update_member_ok",
	       success: function(data) {
	           alert("수정이 정상적으로 처리되었습니다.");
	           location.href = "my_page?mf_id=${update_list.mf_id}";
	       },
	       error: function() {
	           alert("오류 발생");
	       }
	   });
	}
</script>
<script>
// 비밀번호 확인 로직
	function checkPasswordMatch() {
	    const pw = document.getElementById("mf_pw").value;
	    const pwChk = document.getElementById("mf_pw_chk").value;
	    const msg = document.getElementById("pw_match_msg");
	
	    if (pwChk.length === 0) {
	        msg.textContent = "";
	        return;
	    }
	
	    if (pw === pwChk) {
	        msg.textContent = "비밀번호가 일치합니다.";
	        msg.style.color = "green";
	    } else {
	        msg.textContent = "비밀번호가 일치하지 않습니다.";
	        msg.style.color = "red";
	    }
	}
</script>
</head>
<body>
	<form id="frm">
		<table>
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="mf_id" value="${update_list.mf_id}" readonly="readonly" style.background-color="gray"></td>
			</tr>			
			<tr>
				<td>닉네임 : </td>
				<td>
					<input type="text" id="mf_name" name="mf_name" value="${update_list.mf_name}"
				       required maxlength="20"
				       pattern="^[a-z가-힣]+$"
				       title="소문자, 한글만 입력 가능합니다."
				       oninvalid="this.setCustomValidity('올바른 이름 형식이 아닙니다. 소문자/한글만 입력하세요.')"
				       oninput="this.setCustomValidity('')">
				</td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td><input type="password" name="mf_pw" value="${update_list.mf_pw}"></td>
			</tr>			
			<tr>
				<td>비밀번호 확인 : </td>
				<td>
					<input type="password" name="mf_pw_chk" id="mf_pw_chk" value="${update_list.mf_pw_chk}"
		            required
		            placeholder="비밀번호를 다시 입력"
		            oninput="checkPasswordMatch()">
		            <div id="pw_match_msg"></div>
				</td>
			</tr>			
			<tr>
				<td>이메일 : </td>
				<td>
				<input type="email" name="mf_email" value="${update_list.mf_email}"
	            required
	            placeholder="example@email.com"
	            pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
	            oninvalid="this.setCustomValidity('올바른 이메일 주소 형식으로 입력해주세요.')"
	            oninput="setCustomValidity('')">
				</td>
			</tr>			
			<tr>
				<td>전화번호 : </td>
				<td>
				<input type="tel" name="mf_phone" value="${update_list.mf_phone}"
	            required
	            placeholder="010-0000-0000"
	            pattern="^010-\d{4}-\d{4}$"
	            oninvalid="this.setCustomValidity('올바른 전화번호 형식(010-0000-0000)으로 입력해주세요.')"
	            oninput="setCustomValidity('')">
				</td>
			</tr>			
			<tr>
				<td>생년월일 : </td>
				<td><input type="text" name="mf_birth" value="${update_list.mf_birth}"></td>
			</tr>	
		</table>
		<input type="button" onclick="fn_submit()" value="수정">
		<button type="button" onclick="location.href='my_page?mf_id=${update_list.mf_id}'">취소</button>
	</form>
</body>
</html>
