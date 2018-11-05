package com.gamehub.www.database.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gamehub.www.database.vo.UserInfoVO;

@Repository
public class UserInfoDAOImpl implements UserInfoDAO{

	@Autowired
	SqlSession sql;
	
	private final String NAMESPACE = "userinfo_SQL.";
	private final String USERSLISTSVIEW ="listview";
	private final String USERDETAILVIEW ="detailview";
	private final String JOINUSER ="joinuser";
	
	@Override
	public List<String> usersListView() {
		return sql.selectList(NAMESPACE+USERSLISTSVIEW);
	}

	@Override
	public List<UserInfoVO> userDetailView(String uid) {
		return sql.selectList(NAMESPACE+USERDETAILVIEW, uid);
	}

	@Override
	public int joinUser(UserInfoVO userInfoVO) {
		return sql.insert(NAMESPACE+JOINUSER,userInfoVO);
	}

}
