package com.lgy.TeamProject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.lgy.TeamProject.dto.TeamDTO;

public interface TeamDAO {
	public void recruit(HashMap<String, String> param);

	public ArrayList<TeamDTO> list();

	public int login(@Param("mf_id") String id, @Param("mf_pw") String pw);

	public void update_member();

	public TeamDTO update_list(@Param("mf_id") String mf_id);

	public void update_ok(HashMap<String, String> param);

	public void delete_ok(@Param("mf_id") String id);
}
