<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String id = request.getParameter("mf_id"); %>
<%
	out.print(id);
%>
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
		<div class="profile_image profile">
			<img alt="MATFLIX" src="${pageContext.request.contextPath}/resources/image/MATFLIX.png">
		</div>
		<div>
			<div class="profile_info">
				<span><span id="profile_name">${mf_id}</span>님 환영합니다.</span>
			</div>
		</div>
		<div id="log_out_div">
			<a href="#" id="log_out">로그아웃</a>
		</div>
	</div>
	<button id="page_up">
		<i class="fas fa-chevron-up"></i>
	</button>
</header>
