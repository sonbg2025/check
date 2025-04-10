package com.lgy.mf_board.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
	private int b_id;		// 게시글 번호
	private String b_name;	// 작성자 이름
	private String b_email;	// 이메일
	private String b_title;	// 제목
	private String b_content;	// 내용
	private Timestamp b_date;	// 작성일
	private int b_hit;		// 조회수
	private int b_recommend;	// 추천수
//	private String B_PWD;
//	private String B_IP;
//	private int B_REF;		
//	private int B_STEP;	
//	private String B_fname;	
//	private String B_rfname;
//	private int B_fsize;	
//	private int B_LEVEL;	
	
//	 @Override
//	    public String toString() {
//	        return "BoardDTO [B_id=" + B_id + ", B_NAME=" + B_NAME + ", B_EMAIL=" + B_EMAIL + ", B_TITLE=" + B_TITLE + 
//	                ", B_CONTENT=" + B_CONTENT + ", B_DATE=" + B_DATE + ", B_HIT=" + B_HIT + ", B_PWD=" + B_PWD + 
//	                ", B_IP=" + B_IP + ", B_REF=" + B_REF + ", B_STEP=" + B_STEP + ", B_LEVEL=" + B_LEVEL + 
//	                ", B_fname=" + B_fname + ", B_rfname=" + B_rfname + ", B_fsize=" + B_fsize + "]";
//	    }
}
