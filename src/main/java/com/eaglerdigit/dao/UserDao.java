package com.eaglerdigit.dao;

import java.util.List;
import java.util.Map;

import com.eaglerdigit.entity.User;

public interface UserDao {
	int deleteByPrimaryKey(Integer id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Integer id);

	void updateByPrimaryKeySelective(int id);

	void updateByPrimaryKey(User user);

	List<User> userList();

	List<User> selectList();

	void deleteUser(int id);

	User loginByPhone(Map<String, Object> map);

	User loginByCode(Map<String, Object> map);

}
