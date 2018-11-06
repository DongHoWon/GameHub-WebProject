package com.gamehub.www.service;

import java.util.List;
import com.gamehub.www.database.vo.UserInfoVO;

public interface UserInfoService {
	
	public List<String> usersListView();
	public UserInfoVO userDetailView(String uid);
	public int joinUser(UserInfoVO userInfoVO);
	public String uidDuplicate(String uid);
	public String umailDuplicate(UserInfoVO userInfoVO);
	public UserInfoVO loginCheck(UserInfoVO userInfoVO);
}
