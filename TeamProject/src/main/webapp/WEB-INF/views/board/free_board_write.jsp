<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="content">
    <div class="board_write_container">
        <!-- 글쓰기 헤더 -->
        <div class="write_header">
            <h2>자유게시판 글쓰기</h2>
            <p>요리와 관련된 다양한 이야기를 자유롭게 작성해보세요!</p>
        </div>
        
        <!-- 글쓰기 폼 -->
        <form id="board_write_form" class="board_write_form">
            <!-- 기본 정보 입력 -->
            <div class="form_section">
                <div class="form_row">
                    <div class="form_group">
                        <label for="post_category">카테고리 <span class="required">*</span></label>
                        <select id="post_category" name="post_category" required>
                            <option value="">카테고리 선택</option>
                            <option value="recipe">레시피 공유</option>
                            <option value="question">질문/답변</option>
                            <option value="review">후기</option>
                            <option value="talk">잡담</option>
                        </select>
                    </div>
                </div>
                
                <div class="form_row">
                    <div class="form_group">
                        <label for="post_title">제목 <span class="required">*</span></label>
                        <input type="text" id="post_title" name="post_title" required placeholder="제목을 입력하세요">
                    </div>
                </div>
            </div>
            
            <!-- 에디터 섹션 -->
            <div class="form_section">
                <div class="editor_toolbar">
                    <button type="button" class="toolbar_btn" data-command="bold" title="굵게">
                        <i class="fas fa-bold"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="italic" title="기울임">
                        <i class="fas fa-italic"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="underline" title="밑줄">
                        <i class="fas fa-underline"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="strikeThrough" title="취소선">
                        <i class="fas fa-strikethrough"></i>
                    </button>
                    <span class="toolbar_divider"></span>
                    <button type="button" class="toolbar_btn" data-command="justifyLeft" title="왼쪽 정렬">
                        <i class="fas fa-align-left"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="justifyCenter" title="가운데 정렬">
                        <i class="fas fa-align-center"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="justifyRight" title="오른쪽 정렬">
                        <i class="fas fa-align-right"></i>
                    </button>
                    <span class="toolbar_divider"></span>
                    <button type="button" class="toolbar_btn" data-command="insertUnorderedList" title="글머리 기호">
                        <i class="fas fa-list-ul"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="insertOrderedList" title="번호 매기기">
                        <i class="fas fa-list-ol"></i>
                    </button>
                    <span class="toolbar_divider"></span>
                    <button type="button" class="toolbar_btn" data-command="createLink" title="링크 삽입">
                        <i class="fas fa-link"></i>
                    </button>
                    <button type="button" class="toolbar_btn" data-command="insertImage" title="이미지 삽입">
                        <i class="fas fa-image"></i>
                    </button>
                </div>
                
                <div class="editor_content_wrapper">
                    <div id="editor_content" class="editor_content" contenteditable="true"></div>
                    <textarea id="post_content" name="post_content" style="display: none;"></textarea>
                </div>
                
                <div class="content_length">
                    <span id="content_length_counter">0</span> / 5000자
                </div>
            </div>
            
            <!-- 파일 첨부 섹션 -->
            <div class="form_section">
                <div class="form_group">
                    <label>파일 첨부</label>
                    <div class="file_upload_container">
                        <div class="file_upload_list" id="file_upload_list">
                            <div class="file_upload_item">
                                <label for="file_upload" class="file_upload_label">
                                    <i class="fas fa-plus"></i>
                                    <span>파일 추가</span>
                                </label>
                                <input type="file" id="file_upload" class="file_upload_input" multiple>
                            </div>
                        </div>
                        <p class="upload_hint">* 최대 5개 파일, 각 파일당 최대 10MB (이미지, 문서, 압축파일)</p>
                    </div>
                </div>
            </div>
            
            <!-- 옵션 섹션 -->
            <div class="form_section">
                <div class="form_options">
                    <div class="option_item">
                        <input type="checkbox" id="notice_option" name="notice_option">
                        <label for="notice_option">공지사항으로 등록 (관리자만 가능)</label>
                    </div>
                    <div class="option_item">
                        <input type="checkbox" id="secret_option" name="secret_option">
                        <label for="secret_option">비밀글로 등록 (작성자와 관리자만 확인 가능)</label>
                    </div>
                </div>
            </div>
            
            <!-- 버튼 섹션 -->
            <div class="form_actions">
                <button type="button" class="cancel_btn" onclick="history.back()">취소</button>
                <button type="submit" class="submit_btn">등록하기</button>
            </div>
        </form>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // 에디터 기능 구현
    const editor = document.getElementById('editor_content');
    const contentTextarea = document.getElementById('post_content');
    const contentLengthCounter = document.getElementById('content_length_counter');
    const toolbarButtons = document.querySelectorAll('.toolbar_btn');
    
    // 에디터 내용 변경 감지
    editor.addEventListener('input', function() {
        // 내용을 hidden textarea에 복사
        contentTextarea.value = editor.innerHTML;
        
        // 글자 수 카운팅 (HTML 태그 제외)
        const textContent = editor.textContent || editor.innerText;
        const length = textContent.length;
        contentLengthCounter.textContent = length;
        
        // 글자 수 제한 (5000자)
        if (length > 5000) {
            contentLengthCounter.style.color = '#e74c3c';
        } else {
            contentLengthCounter.style.color = '';
        }
    });
    
    // 툴바 버튼 클릭 이벤트
    toolbarButtons.forEach(button => {
        button.addEventListener('click', function() {
            const command = this.getAttribute('data-command');
            
            if (command === 'createLink') {
                const url = prompt('링크 URL을 입력하세요:', 'http://');
                if (url) {
                    document.execCommand(command, false, url);
                }
            } else if (command === 'insertImage') {
                const url = prompt('이미지 URL을 입력하세요:', 'http://');
                if (url) {
                    document.execCommand(command, false, url);
                }
            } else {
                document.execCommand(command, false, null);
            }
            
            // 버튼 활성화 상태 토글
            if (['bold', 'italic', 'underline', 'strikeThrough'].includes(command)) {
                this.classList.toggle('active');
            }
            
            // 에디터에 포커스 주기
            editor.focus();
        });
    });
    
    // 파일 업로드 기능
    const fileUploadInput = document.getElementById('file_upload');
    const fileUploadList = document.getElementById('file_upload_list');
    
    fileUploadInput.addEventListener('change', function() {
        const files = this.files;
        
        // 최대 5개 파일 제한
        if (document.querySelectorAll('.file_preview').length + files.length > 5) {
            alert('최대 5개의 파일만 업로드할 수 있습니다.');
            return;
        }
        
        for (let i = 0; i < files.length; i++) {
            const file = files[i];
            
            // 파일 크기 제한 (10MB)
            if (file.size > 10 * 1024 * 1024) {
                alert(`${file.name} 파일이 10MB를 초과합니다.`);
                continue;
            }
            
            const fileItem = document.createElement('div');
            fileItem.className = 'file_upload_item';
            
            const filePreview = document.createElement('div');
            filePreview.className = 'file_preview';
            
            // 이미지 파일인 경우 미리보기 생성
            if (file.type.startsWith('image/')) {
                const img = document.createElement('img');
                img.src = URL.createObjectURL(file);
                filePreview.appendChild(img);
            } else {
                // 이미지가 아닌 경우 파일 아이콘 표시
                const icon = document.createElement('div');
                icon.style.width = '100%';
                icon.style.height = '100%';
                icon.style.display = 'flex';
                icon.style.alignItems = 'center';
                icon.style.justifyContent = 'center';
                icon.style.flexDirection = 'column';
                icon.style.backgroundColor = '#f5f5f5';
                
                const iconElement = document.createElement('i');
                iconElement.className = 'fas fa-file';
                iconElement.style.fontSize = '32px';
                iconElement.style.color = '#777';
                
                icon.appendChild(iconElement);
                filePreview.appendChild(icon);
            }
            
            // 파일명 표시
            const fileName = document.createElement('div');
            fileName.className = 'file_name';
            fileName.textContent = file.name;
            filePreview.appendChild(fileName);
            
            // 삭제 버튼
            const removeBtn = document.createElement('button');
            removeBtn.className = 'file_remove';
            removeBtn.innerHTML = '<i class="fas fa-times"></i>';
            removeBtn.addEventListener('click', function() {
                fileItem.remove();
            });
            
            fileItem.appendChild(filePreview);
            fileItem.appendChild(removeBtn);
            
            // 파일 추가 버튼 앞에 삽입
            const uploadLabel = document.querySelector('.file_upload_label').parentNode;
            fileUploadList.insertBefore(fileItem, uploadLabel);
        }
        
        // 파일 선택 초기화
        this.value = '';
    });
    
    // 폼 제출 이벤트
    const boardWriteForm = document.getElementById('board_write_form');
    boardWriteForm.addEventListener('submit', function(e) {
        e.preventDefault();
        
        // 필수 입력 필드 검증
        const category = document.getElementById('post_category').value;
        const title = document.getElementById('post_title').value;
        const content = editor.innerHTML;
        
        if (!category) {
            alert('카테고리를 선택해주세요.');
            return;
        }
        
        if (!title.trim()) {
            alert('제목을 입력해주세요.');
            return;
        }
        
        if (!content.trim() || editor.textContent.trim() === '') {
            alert('내용을 입력해주세요.');
            return;
        }
        
        // 글자 수 제한 검증
        const textContent = editor.textContent || editor.innerText;
        if (textContent.length > 5000) {
            alert('내용은 최대 5000자까지 입력 가능합니다.');
            return;
        }
        
        // 폼 데이터 수집 및 서버 전송 (실제 구현 시 AJAX 사용)
        alert('게시글이 등록되었습니다.');
        window.location.href = 'free_board.jsp'; // 목록 페이지로 이동
    });
});
</script>
