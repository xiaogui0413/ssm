package com.eaglerdigit.service;

import java.util.List;
import java.util.Map;

import com.eaglerdigit.entity.User;

public interface UserService {
	// 根据id查找
	public User getUserById(Integer userid);

	// 添加一条数据
	public int insert(User user);

	List<User> userList();

	List<User> selectList();

	void deleteUser(int id);

	void updateByPrimaryKey(User user);

	User loginByPhone(Map<String, Object> map);

	User loginByCode(Map<String, Object> map);
}
