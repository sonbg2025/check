package com.lgy.mf_board.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
	private int B_id;		// 게시글 번호
	private String B_NAME;	// 작성자 이름
	private String B_EMAIL;	// 이메일
	private String B_TITLE;	// 제목
	private String B_CONTENT;	// 내용
	private Timestamp B_DATE;	// 작성일
	private int B_HIT;		// 조회수
	private String B_PWD;	// 비밀번호
	private String B_IP;	// IP 번호
	private int B_REF;		
	private int B_STEP;	
	private String B_fname;	
	private String B_rfname;
	private int B_fsize;	
	private int B_LEVEL;	
	
	 @Override
	    public String toString() {
	        return "BoardDTO [B_id=" + B_id + ", B_NAME=" + B_NAME + ", B_EMAIL=" + B_EMAIL + ", B_TITLE=" + B_TITLE + 
	                ", B_CONTENT=" + B_CONTENT + ", B_DATE=" + B_DATE + ", B_HIT=" + B_HIT + ", B_PWD=" + B_PWD + 
	                ", B_IP=" + B_IP + ", B_REF=" + B_REF + ", B_STEP=" + B_STEP + ", B_LEVEL=" + B_LEVEL + 
	                ", B_fname=" + B_fname + ", B_rfname=" + B_rfname + ", B_fsize=" + B_fsize + "]";
	    }
}
/*
 * B_id NUMBER(5) PRIMARY key,
B_NAME VARCHAR2(20),
B_EMAIL VARCHAR2(50),
B_TITLE VARCHAR2(80),
B_CONTENT VARCHAR2(3000),
B_DATE DATE DEFAULT SYSDATE,
B_HIT NUMBER(5) DEFAULT 0,
B_PWD varchar2(12),
B_IP VARCHAR2(15),
B_REF NUMBER(5) ,
B_STEP NUMBER(5) ,
B_fname VARCHAR2(100 byte),
B_rfname VARCHAR2(100 byte),
B_fsize NUMBER(10,0) ,
B_LEVEL NUMBER(5)
);
 */