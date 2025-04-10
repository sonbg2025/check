<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="content">
    <div class="login_container">
        <div class="login_box">
            <div class="login_header">
                <h2>로그인</h2>
                <p><span id="login_MATFLIX">MATFLIX</span> 에 오신 것을 환영합니다</p>
            </div>
            <form method="post" action="member/main_membership" class="login_form">
                <div class="form_group">
                    <label for="mf_id"><i class="fas fa-user"></i> 아이디</label>
                    <input type="text" name="mf_id" id="mf_id" required oninvalid="this.setCustomValidity('아이디를 입력해주세요.')" oninput="this.setCustomValidity('')">
                </div>
                
                <div class="form_group">
                    <label for="mf_pw"><i class="fas fa-lock"></i> 비밀번호</label>
                    <input type="password" name="mf_pw" id="mf_pw" required oninvalid="this.setCustomValidity('비밀번호를 입력해주세요.')" oninput="this.setCustomValidity('')">
                </div>
                
                <div class="form_options">
                    <div class="remember_me">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">아이디 저장</label>
                    </div>
                    <div class="forgot_password">
                        <a href="forgot_password.jsp">비밀번호 찾기</a>
                    </div>
                </div>
                
                <div class="form_buttons">
                    <button type="submit" class="login_btn_login">로그인</button>
                </div>
            </form>
            
            <div class="social_login">
                <p>소셜 계정으로 로그인</p>
                <div class="social_buttons">
                    <a href="#" class="social_button kakao">
                        <i class="fas fa-comment"></i> 카카오 로그인
                    </a>
                    <a href="#" class="social_button naver">
                        <i class="fas fa-n"></i> 네이버 로그인
                    </a>
                    <a href="#" class="social_button google">
                        <i class="fab fa-google"></i> 구글 로그인
                    </a>
                </div>
            </div>
            
            <div class="register_link">
                <p>아직 회원이 아니신가요? <a href="recruit.jsp">회원가입</a></p>
            </div>
        </div>
    </div>
</div>
