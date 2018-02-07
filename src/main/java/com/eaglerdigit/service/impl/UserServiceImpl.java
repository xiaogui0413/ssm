package com.eaglerdigit.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eaglerdigit.dao.UserDao;
import com.eaglerdigit.entity.User;
import com.eaglerdigit.service.UserService;

@Transactional
@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;

	public User getUserById(Integer userid) {

		return userDao.selectByPrimaryKey(userid);
	}

	public int insert(User user) {

		return userDao.insert(user);
	}

	@Override
	public List<User> userList() {

		return userDao.selectList();
	}

	@Override
	public List<User> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(int id) {

		userDao.deleteUser(id);

	}

	@Override
	public void updateByPrimaryKey(User user) {

		userDao.updateByPrimaryKey(user);

	}

	@Override
	public User loginByPhone(Map<String, Object> map) {

		return loginByPhone(map);
	}

	@Override
	public User loginByCode(Map<String, Object> map) {

		return loginByCode(map);
	}

}
