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
	public UserInfoVO userDetailView(String uid) {
		return dao.userDetailView(uid);
	}

	@Override
	public List<UserInfoVO> usersListView() {
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
	public String umailDuplicate(UserInfoVO userInfoVO) {
		return dao.umailDuplicate(userInfoVO);
	}

	@Override
	public int userDelete(String uid) {
		return dao.userDelete(uid);
	}
}
