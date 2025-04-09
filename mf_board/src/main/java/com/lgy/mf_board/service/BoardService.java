package com.lgy.mf_board.service;

import java.util.ArrayList;	
import java.util.HashMap;

import org.springframework.ui.Model;

import com.lgy.mf_board.dto.BoardDTO;

public interface BoardService {
	public ArrayList<BoardDTO> list();
	public void write(HashMap<String, String> param);
	public BoardDTO contentView(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
	public void excute(Model model);
	
}
