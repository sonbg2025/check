package com.lgy.mf_board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.lgy.mf_board.dto.BoardDTO;

public interface boardDAO {
	public ArrayList<BoardDTO> list();
	public void write(HashMap<String, String> param);
	public BoardDTO contentView(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
	public void upHit(HashMap<String, String> param);

}
	