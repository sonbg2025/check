package com.lgy.TeamProject.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lgy.TeamProject.dto.TeamDTO;
import com.lgy.TeamProject.service.TeamService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member")
public class TeamController {

	@Autowired
	private TeamService service;

	// 마이페이지
	@RequestMapping("/profile")
	public String profile() {
		return "member/profile";
	}

	@RequestMapping("/delete_member")
	public String delete_member(@RequestParam("mf_id") String mf_id, Model model) {
		model.addAttribute("mf_id", mf_id);
		return "delete_member";
	}

	// 삭제전 회원 확인
	@PostMapping("/delete_member_check")
	@ResponseBody
	public String delete_member_check(@RequestParam("mf_id") String mf_id, @RequestParam("mf_pw") String mf_pw) {
		log.info("@# delete_member_check()");
		boolean delete_ok = false;
		ArrayList<TeamDTO> list = service.list();
		String mf_pw_check = "";
		for (TeamDTO teamDTO : list) {
			if (teamDTO.getMf_id().equals(mf_id)) {
				mf_pw_check = teamDTO.getMf_pw();
			}
		}
		if (mf_pw_check.equals(mf_pw)) {
			service.delete_ok(mf_id);
			delete_ok = true;
		}
		return delete_ok ? "available" : "unavailable";
	}

	// 회원 정보 수정 페이지
	@RequestMapping("/update_member")
	public String update_member(@RequestParam String mf_id, Model model) {
		log.info("@# update_member()");
		TeamDTO update_list = service.update_list(mf_id);
		model.addAttribute("update_list", update_list);
		System.out.println(model);
		return "update_member";
	}

	// 회원 정보 수정 로직
	@RequestMapping("/update_member_ok")
	public String update_member_ok(@RequestParam HashMap<String, String> param) {
		service.update_ok(param);
		return "my_page";
	}

	// 회원가입
	@RequestMapping("/recruit")
	public String recruit() {
		return "member/recruit";
	}

	// 로그인
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}

	// 로그인 가능 여부 확인
	@RequestMapping("/main_membership")
	public String login_ok(@RequestParam("mf_id") String mf_id, @RequestParam("mf_pw") String mf_pw, Model model) {
		int result = service.login(mf_id, mf_pw);
		if (result == 1) {
			model.addAttribute("mf_id", mf_id);
			System.out.println(mf_id);
			return "front/index";
		}
		return "front/index";
	}

	// 회원가입 로직
	@RequestMapping("/recruit_result_ok")
	public String write(@RequestParam HashMap<String, String> param) {
		service.recruit(param);

		return "front/index";
	}

	// 아이디 중복 체크 로직
	@PostMapping("/mf_id_check")
	@ResponseBody
	public String checkId(@RequestParam String mf_id, Model model) {

		ArrayList<TeamDTO> list = service.list();
		boolean exists;
		int count = 0;
		for (TeamDTO teamDTO : list) {
			if (teamDTO.getMf_id().equals(mf_id)) {
				count++;
			}
		}
		if (count != 0) {
			exists = true; // 예시 서비스
		} else {
			exists = false; // 예시 서비스
		}
		return exists ? "unavailable" : "available";
	}

}
