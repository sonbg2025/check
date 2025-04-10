<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet">   <!-- 실행 -->
<link href="${pageContext.request.contextPath}/resources/css/sidebar.css" rel="stylesheet">      <!-- 사이드바 -->
<link href="${pageContext.request.contextPath}/resources/css/content_main.css" rel="stylesheet">   <!-- 메인 -->
<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet">      <!-- 헤더 -->
<link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet">      <!-- 푸터 -->
<link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet">      <!-- 로그인 -->
<link href="${pageContext.request.contextPath}/resources/css/recruit.css" rel="stylesheet">      <!-- 회원가입 -->
<link href="${pageContext.request.contextPath}/resources/css/profile.css" rel="stylesheet">      <!-- 마이페이지 -->
<link href="${pageContext.request.contextPath}/resources/css/recipe.css" rel="stylesheet">      <!-- 레시피 -->
<link href="${pageContext.request.contextPath}/resources/css/recipe_write.css" rel="stylesheet">      <!-- 레시피 작성 -->
<link href="${pageContext.request.contextPath}/resources/css/list.css" rel="stylesheet">      <!-- 레시피 리스트 -->
<link href="${pageContext.request.contextPath}/resources/css/free_board_write.css" rel="stylesheet">      <!-- 자유게시판 작성 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.17/jquery.bxslider.min.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.17/jquery.bxslider.min.js"></script>
<script type="text/javascript">

   // 클릭
   $(document).ready(function () {
      // 로그인 버튼 클릭 시 login.jsp를 content 영역에 로드
      $(document).on("click", ".btn_login", function () {
         $(".content").load("${pageContext.request.contextPath}/member/login", function(response, status, xhr) {
            if (status === "error") {
               alert("로그인 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("로그인 페이지 로딩 완료");
            }
         });
      });
      
      //회원가입
      $(document).on("click", ".btn_register", function () {
         $(".content").load("${pageContext.request.contextPath}/member/recruit", function(response, status, xhr) {
            if (status === "error") {
               alert("회원가입 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("회원가입 페이지 로딩 완료");
            }
         });
      });
      
      // 홈
      $(document).on("click", ".header_logo, .logo, #home", function () {
         $(".content").load("${pageContext.request.contextPath}/front/content_main", function(response, status, xhr) {
            if (status === "error") {
               alert("홈 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("홈 페이지 로딩 완료");
            }
         });
      });
      
      // 마이페이지
      $(document).on("click", ".profile", function () {
         $(".content").load("${pageContext.request.contextPath}/member/profile", function(response, status, xhr) {
            if (status === "error") {
               alert("마이페이지 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("마이페이지 페이지 로딩 완료");
            }
         });
      });
      
      // 자유게시판
      $(document).on("click", ".board", function () {
         $(".content").load("${pageContext.request.contextPath}/board/list", function(response, status, xhr) {
            if (status === "error") {
               alert("마이페이지 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("마이페이지 페이지 로딩 완료");
            }
         });
      });
      
      // 레시피 추가
      $(document).on("click", ".add_recipe_btn, .board_buttons .write_btn", function () {
         $(".content").load("${pageContext.request.contextPath}/front/recipe_write", function(response, status, xhr) {
            if (status === "error") {
               alert("레시피 추가 페이지 로딩 중 오류가 발생했습니다: " + xhr.status);
            } else {
               console.log("레시피 추가 페이지 로딩 완료");
            }
         });
      });

      // 사이드바 토글
      $(document).on("click","#sidebar_toggle", function () {
         $("#sidebar").toggleClass("hidden");
         $(".main_wrapper").toggleClass("sidebar_hidden");
      });

      // page up
      $(document).on("click","#page_up", function () {
         $("html, body").animate({scrollTop: 0}, 500);
      });

      // 분류 드롭다운
      $(document).on("click","#page_up", function () {
         $("html, body").animate({scrollTop: 0}, 500);
      });
      
      // 아이디 중복체크
      $(document).on("click",".btn_check",function () {
          const mf_id = $("#mf_id").val();

          // 빈값 검사
          if (!mf_id) {
              alert("아이디를 입력하세요.");
              return;
          }

          // 클라이언트 유효성 검사
          const idPattern = /^[a-zA-Z0-9]{4,12}$/;
          if (!idPattern.test(mf_id)) {
              alert("아이디는 4~12자의 영문 대/소문자 또는 숫자만 가능합니다.");
              return;
          }

          $.ajax({
              type: "post",
              url: "member/mf_id_check",  // 아이디 중복 체크를 처리할 서버 경로
              data: { mf_id: mf_id },
              success: function(response) {
                  if (response === "available") {
                      alert("사용 가능한 아이디입니다.");
                      $("#mf_id").prop("readonly", true);
                      $("button[onclick='check_id()']").prop("disabled", true).text("중복체크 완료");
                  } else if (response === "unavailable") {
                      alert("이미 사용 중인 아이디입니다.");
                  } else {
                      alert("확인 중 오류가 발생했습니다.");
                  }
              },
              error: function() {
                  alert("서버 요청 중 오류가 발생했습니다.");
              }
          });
      });
      
      //비번 보이게하기
      $(document).on("click","#togglePassword", function () {
              $("#mf_pw").attr("type", $("#mf_pw").attr("type") === "password" ? "text" : "password");
           });
      $(document).on("click","#togglePwChk", function () {
              $("#mf_pw_chk").attr("type", $("#mf_pw_chk").attr("type") === "password" ? "text" : "password");
           });
   });
      
   //----------------------------------------
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
              url: "member/recruit_result_ok",
              success: function(data) {
                  alert("회원가입이 정상적으로 처리되었습니다.");
                  location.href = "front/index";
              },
              error: function() {
                  alert("오류 발생");
              }
          });
      }

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
   
      //등록을해요 누르면 데이터 전송 -> 그 버튼에 온클릭 ->  컨테이너 변경 
</script>
</head>
<body>
   <div class="container">
        <!-- sidebar -->
        <jsp:include page="sidebar.jsp" />
<%--         <jsp:include page="sidebar_member.jsp" /> --%>
                
        <div class="main_wrapper" id="main_wrapper">
            <!-- header -->
            <jsp:include page="header.jsp" />
<%--             <jsp:include page="header_member.jsp" /> --%>
            
            <!-- content -->
            <div class="content" id="content">
                <jsp:include page="../front/content_main.jsp" />
<%--                 <jsp:include page="../front/profile.jsp" /> --%>
<%--                 <jsp:include page="../front/recipe_write.jsp" /> --%>
<%--                 <jsp:include page="../front/recipe.jsp" /> --%>
<%--                 <jsp:include page="../board/list.jsp" /> --%>
<%--                 <jsp:include page="../board/free_board_write.jsp" /> --%>
            </div>

            <!-- footer -->
            <jsp:include page="footer.jsp" />
        </div>
    </div>
</body>
</html>