package com.lgy.TeamProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.lgy.TeamProject.dto.TeamDTO;

public interface TeamService {
	public void recruit(HashMap<String, String> param);

	public ArrayList<TeamDTO> list();

	public int login(@Param("mf_id") String mfId, @Param("mf_pw") String mfPw);

	public TeamDTO update_list(String mf_id);

	public void update_ok(HashMap<String, String> param);

	public void delete_ok(@Param("mf_id") String id);
}
