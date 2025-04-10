<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="mypage_container">
    <!-- 프로필 섹션 -->
    <section class="profile_section">
        <div class="profile_header">
            <div class="profile_image_large">
                <img src="${pageContext.request.contextPath}/resources/image/MATFLIX.png" alt="프로필 이미지">
                <button class="edit_profile_image"><i class="fas fa-camera"></i></button>
            </div>
            <div class="profile_info_container">
                <div class="profile_info">
                    <h2>사용자 이름 <button class="edit_profile_btn"><i class="fas fa-edit"></i></button></h2>
                    <p class="user_bio">안녕하세요! 맛있는 요리를 사랑하는 요리 초보입니다.</p>
                </div>
                <div class="profile_stats">
                    <div class="stat_item">
                        <span class="stat_number">15</span>
                        <span class="stat_label">레시피</span>
                    </div>
                    <div class="stat_item">
                        <span class="stat_number">142</span>
                        <span class="stat_label">팔로워</span>
                    </div>
                    <div class="stat_item">
                        <span class="stat_number">56</span>
                        <span class="stat_label">팔로잉</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 탭 메뉴 -->
    <div class="mypage_tabs">
        <button class="tab_btn active" data-tab="my_recipes">내 레시피</button>
        <button class="tab_btn" data-tab="saved_recipes">저장한 레시피</button>
        <button class="tab_btn" data-tab="liked_recipes">좋아요한 레시피</button>
        <button class="tab_btn" data-tab="account_settings">계정 설정</button>
    </div>

    <!-- 내 레시피 탭 -->
    <div class="tab_content active" id="my_recipes">
        <div class="tab_header">
            <h3>내 레시피</h3>
            <button class="add_recipe_btn"><i class="fas fa-plus"></i> 새 레시피 등록</button>
        </div>
        <div class="recipe_grid">
            <div class="recipe_card">
                <div class="recipe_image">
                    <img alt="food" src="${pageContext.request.contextPath}/resources/image/food.jpg">
                    <div class="recipe_overlay">
                        <a href="#" class="btn_view">레시피 보기</a>
                    </div>
                    <div class="recipe_actions">
                        <button class="recipe_action_btn edit_btn"><i class="fas fa-edit"></i></button>
                        <button class="recipe_action_btn delete_btn"><i class="fas fa-trash"></i></button>
                    </div>
                </div>
                <div class="recipe_info">
                    <h3><a href="#">매콤한 떡볶이</a></h3>
                    <p>집에서 간단하게 만드는 매콤달콤 떡볶이</p>
                    <div class="recipe_meta">
                        <div class="recipe_rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>(32)</span>
                        </div>
                        <div class="recipe_time">
                            <i class="far fa-clock"></i> 30분
                        </div>
                    </div>
                </div>
            </div>
            <div class="recipe_card">
                <div class="recipe_image">
                    <img alt="food" src="${pageContext.request.contextPath}/resources/image/food.jpg">
                    <div class="recipe_overlay">
                        <a href="#" class="btn_view">레시피 보기</a>
                    </div>
                    <div class="recipe_actions">
                        <button class="recipe_action_btn edit_btn"><i class="fas fa-edit"></i></button>
                        <button class="recipe_action_btn delete_btn"><i class="fas fa-trash"></i></button>
                    </div>
                </div>
                <div class="recipe_info">
                    <h3><a href="#">간단 김치찌개</a></h3>
                    <p>15분만에 뚝딱 완성하는 김치찌개</p>
                    <div class="recipe_meta">
                        <div class="recipe_rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <span>(47)</span>
                        </div>
                        <div class="recipe_time">
                            <i class="far fa-clock"></i> 15분
                        </div>
                    </div>
                </div>
            </div>
            <div class="recipe_card">
                <div class="recipe_image">
                    <img alt="food" src="${pageContext.request.contextPath}/resources/image/food.jpg">
                    <div class="recipe_overlay">
                        <a href="#" class="btn_view">레시피 보기</a>
                    </div>
                    <div class="recipe_actions">
                        <button class="recipe_action_btn edit_btn"><i class="fas fa-edit"></i></button>
                        <button class="recipe_action_btn delete_btn"><i class="fas fa-trash"></i></button>
                    </div>
                </div>
                <div class="recipe_info">
                    <h3><a href="#">버섯 크림 파스타</a></h3>
                    <p>풍부한 맛의 크림소스와 버섯의 조화</p>
                    <div class="recipe_meta">
                        <div class="recipe_rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>(28)</span>
                        </div>
                        <div class="recipe_time">
                            <i class="far fa-clock"></i> 25분
                        </div>
                    </div>
                </div>
            </div>
            <div class="recipe_card">
                <div class="recipe_image">
                    <img alt="food" src="${pageContext.request.contextPath}/resources/image/food.jpg">
                    <div class="recipe_overlay">
                        <a href="#" class="btn_view">레시피 보기</a>
                    </div>
                    <div class="recipe_actions">
                        <button class="recipe_action_btn edit_btn"><i class="fas fa-edit"></i></button>
                        <button class="recipe_action_btn delete_btn"><i class="fas fa-trash"></i></button>
                    </div>
                </div>
                <div class="recipe_info">
                    <h3><a href="#">고구마 맛탕</a></h3>
                    <p>달콤한 고구마로 만드는 간식</p>
                    <div class="recipe_meta">
                        <div class="recipe_rating">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="far fa-star"></i>
                            <span>(19)</span>
                        </div>
                        <div class="recipe_time">
                            <i class="far fa-clock"></i> 20분
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pagination">
            <button class="pagination_btn"><i class="fas fa-chevron-left"></i></button>
            <button class="pagination_btn active">1</button>
            <button class="pagination_btn">2</button>
            <button class="pagination_btn">3</button>
            <button class="pagination_btn"><i class="fas fa-chevron-right"></i></button>
        </div>
    </div>

    <!-- 저장한 레시피 탭 (기본적으로 숨겨짐) -->
    <div class="tab_content" id="saved_recipes">
        <div class="tab_header">
            <h3>저장한 레시피</h3>
        </div>
        <div class="recipe_grid">
            <!-- 저장한 레시피 카드들 -->
        </div>
    </div>

    <!-- 좋아요한 레시피 탭 (기본적으로 숨겨짐) -->
    <div class="tab_content" id="liked_recipes">
        <div class="tab_header">
            <h3>좋아요한 레시피</h3>
        </div>
        <div class="recipe_grid">
            <!-- 좋아요한 레시피 카드들 -->
        </div>
    </div>

    <!-- 계정 설정 탭 (기본적으로 숨겨짐) -->
    <div class="tab_content" id="account_settings">
        <div class="tab_header">
            <h3>계정 설정</h3>
        </div>
        <div class="settings_form">
            <div class="form_group">
                <label for="username">사용자 이름</label>
                <input type="text" id="username" value="사용자 이름">
            </div>
            <div class="form_group">
                <label for="email">이메일</label>
                <input type="email" id="email" value="user@example.com">
            </div>
            <div class="form_group">
                <label for="bio">자기소개</label>
                <textarea id="bio" rows="3">안녕하세요! 맛있는 요리를 사랑하는 요리 초보입니다.</textarea>
            </div>
            <div class="form_group">
                <label for="current_password">현재 비밀번호</label>
                <input type="password" id="current_password">
            </div>
            <div class="form_group">
                <label for="new_password">새 비밀번호</label>
                <input type="password" id="new_password">
            </div>
            <div class="form_group">
                <label for="confirm_password">비밀번호 확인</label>
                <input type="password" id="confirm_password">
            </div>
            <div class="form_actions">
                <button class="save_settings_btn">저장하기</button>
            </div>
        </div>
    </div>
</div>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // 탭 전환 기능
    const tabBtns = document.querySelectorAll('.tab_btn');
    const tabContents = document.querySelectorAll('.tab_content');
    
    tabBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            // 모든 탭 버튼에서 active 클래스 제거
            tabBtns.forEach(b => b.classList.remove('active'));
            // 클릭한 탭 버튼에 active 클래스 추가
            this.classList.add('active');
            
            // 모든 탭 콘텐츠 숨기기
            tabContents.forEach(content => content.classList.remove('active'));
            
            // 클릭한 탭에 해당하는 콘텐츠 표시
            const tabId = this.getAttribute('data-tab');
            document.getElementById(tabId).classList.add('active');
        });
    });
});
</script>
