package com.gamehub.www.database.dao;

import java.util.List;
import com.gamehub.www.database.vo.UserInfoVO;

public interface UserInfoDAO {
	
	public List<UserInfoVO> usersListView();
	public UserInfoVO userDetailView(String uid);
	public int joinUser(UserInfoVO userInfoVO);
	public String uidDuplicate(String uid);
	public String umailDuplicate(UserInfoVO userInfoVO);
	public int userDelete(String uid);

}
