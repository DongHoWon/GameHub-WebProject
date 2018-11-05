package com.gamehub.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamehub.www.database.dao.UserInfoDAO;
import com.gamehub.www.database.vo.UserInfoVO;

@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	UserInfoDAO dao;
	
	@Override
	public List<UserInfoVO> userDetailView(String uid) {
		return dao.userDetailView(uid);
	}

	@Override
	public List<String> usersListView() {
		return dao.usersListView();
	}

	@Override
	public int joinUser(UserInfoVO userInfoVO) {
		return dao.joinUser(userInfoVO);
	}

	@Override
	public String uidDuplicate(String uid) {
		return dao.uidDuplicate(uid);
	}

	@Override
	public String umailDuplicate(String umail) {
		return dao.umailDuplicate(umail);
	}

	@Override
	public UserInfoVO loginCheck(UserInfoVO userInfoVO) {
		return dao.loginCheck(userInfoVO);
	}








}
