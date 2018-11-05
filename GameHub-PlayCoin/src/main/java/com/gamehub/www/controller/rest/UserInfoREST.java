package com.gamehub.www.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.gamehub.www.database.vo.UserInfoVO;
import com.gamehub.www.service.UserInfoService;

@RestController
public class UserInfoREST {
	@Autowired
	UserInfoService service;
	
	// 회원가입
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public int join(@RequestBody UserInfoVO userInfoVO){
		return service.joinUser(userInfoVO);
	}
	
	//아이디 중복조회
	@RequestMapping(value = "/user/uid/{uid}", method = RequestMethod.GET)
	public String uidDuplicate(@PathVariable String uid){
		return service.uidDuplicate(uid);
	}
	
	//이메일 중복조회
	@RequestMapping(value = "/user/umail/{umail}", method = RequestMethod.GET)
	public String umailDuplicate(@PathVariable String umail){
		return service.umailDuplicate(umail);
	}
	
	//로그인 체크
	@RequestMapping(value = "/user/checks", method = RequestMethod.POST)
	public UserInfoVO loginCheck(@RequestBody UserInfoVO userInfoVO){
		return service.loginCheck(userInfoVO);
	}
	
	// 목록 조회
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public List<String> usersListView(){
		return service.usersListView();
	}
	
	// 상세 조회
	@RequestMapping(value = "/user/{uid}", method = RequestMethod.GET)
	public List<UserInfoVO> userDetailView(@PathVariable String uid){
		return service.userDetailView(uid);
	}
}
