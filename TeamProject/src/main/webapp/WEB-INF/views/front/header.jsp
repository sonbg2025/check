<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="header">
	<button id="sidebar_toggle">
		<i class="fas fa-bars"></i>
	</button>
	<div class="header_logo">
		<h1>MATFLIX</h1>
	</div>

	<div class="social_links">
		<a href="https://www.instagram.com" target="_blank"><i
			class="fa-brands fa-instagram"></i></a> <a href="https://www.youtube.com"
			target="_blank"><i class="fa-brands fa-youtube"></i></a> <a
			href="https://section.blog.naver.com" target="_blank"><i
			class="fa-solid fa-blog"></i></a> <a
			href="https://section.cafe.naver.com" target="_blank"><i
			class="fa-solid fa-mug-saucer"></i></a>
	</div>
	
	<div class="header_search">
		<form action="search.jsp" method="get">
			<input type="text" name="query" placeholder="레시피 검색...">
			<button type="submit">검색</button>
		</form>
	</div>

	<div class="header_actions">
		<div class="user_actions">
			<button class="btn_login">로그인</button>
			<button class="btn_register">회원가입</button>
		</div>
	</div>
	<button id="page_up">
		<i class="fas fa-chevron-up"></i>
	</button>
</header>
