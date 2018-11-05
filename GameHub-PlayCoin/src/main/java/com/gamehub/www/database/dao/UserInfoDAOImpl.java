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
	private final String UIDDUPLICATE="uidduplicate";
	private final String UMAILDUPLICATE="umailduplicate";
	private final String LOGINCHECK="logincheck";
	
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

	@Override
	public String uidDuplicate(String uid) {
		return sql.selectOne(NAMESPACE+UIDDUPLICATE,uid);
	}

	@Override
	public String umailDuplicate(String umail) {
		return sql.selectOne(NAMESPACE+UMAILDUPLICATE,umail);
	}

	@Override
	public UserInfoVO loginCheck(UserInfoVO userInfoVO) {
		return sql.selectOne(NAMESPACE+LOGINCHECK,userInfoVO);
	}





	

}
