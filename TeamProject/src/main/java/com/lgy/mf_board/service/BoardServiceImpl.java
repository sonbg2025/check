package com.lgy.mf_board.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lgy.mf_board.dao.boardDAO;
import com.lgy.mf_board.dto.BoardDTO;

@Service("BoardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private SqlSession sqlSession;

	public ArrayList<BoardDTO> list() {
		boardDAO dao = sqlSession.getMapper(boardDAO.class);
		ArrayList<BoardDTO> list = dao.list();
		return list;
	}

	public void write(HashMap<String, String> param) {
		boardDAO dao = sqlSession.getMapper(boardDAO.class);
		dao.write(param);
	}

	public BoardDTO contentView(HashMap<String, String> param) {
		boardDAO dao = sqlSession.getMapper(boardDAO.class);

		dao.upHit(param);

        return dao.contentView(param);
	}

	public void modify(HashMap<String, String> param) {
		boardDAO dao = sqlSession.getMapper(boardDAO.class);
		dao.modify(param);
	}

	public void delete(HashMap<String, String> param) {
		boardDAO dao = sqlSession.getMapper(boardDAO.class);
		dao.delete(param);
		
	}

//	public void excute(Model model) {
//		// TODO Auto-generated method stub
//		
//	}
}
