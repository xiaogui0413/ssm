package com.eaglerdigit.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.eaglerdigit.entity.User;
import com.eaglerdigit.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class UserController {
	/**
	 * 使用@Autowired也可以，@Autowired默认按类型装配
	 * 
	 * @Resource 默认按名称装配，当找不到与名称匹配的bean才会按类型装配。
	 */
	@Resource
	private UserService userService;

	@RequestMapping("/loginGroup")
	public String loginGroup(Map<String, Object> map, HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// 判断是邮箱还是手机号的正则表达式
		// String em = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
		String ph = "^[1][34578]\\d{9}$";
		// HttpSession session = request.getSession();
		/*
		 * if (username.matches(ph)) {// 手机号登录 map.put("phone", username);
		 * map.put("pwd", password); System.out.println("map" + map); User
		 * ph_member = userService.loginByPhone(map); if (ph_member == null) {
		 * request.setAttribute("msg", "用户名或密码错误"); return "login.jsp"; } else {
		 * return "selectList"; } } else {
		 */// 就是用户名登录
		map.put("code", username);
		map.put("pwd", password);
		User name_member = userService.loginByCode(map);
		if (name_member == null) {
			request.setAttribute("msg", "用户名或密码错误");
			return "login.jsp";
		} else {
			return "selectList";
		}
		/*
		 * }
		 */

	}

	@RequestMapping("/showUser")
	public String testtoshowUser(@RequestParam(value = "id") Integer id, Model model) {
		System.out.println("id:" + id);
		User user = userService.getUserById(id);
		model.addAttribute("user", user);
		System.out.println(user);
		return "showUser";
	}

	@RequestMapping("/addUser")
	public String testinsertUser(User user) {
		userService.insert(user);
		return "selectList";
	}

	@RequestMapping("/updateUser")
	public String updateUser(User user) {
		System.out.println("输出结果为：" + user.toString());
		userService.updateByPrimaryKey(user);
		return "selectList";
	}

	@RequestMapping("/editUser")
	public String editUser(int id, Model model) {
		User user = userService.getUserById(id);
		model.addAttribute("user", user);

		return "editUser.jsp";
	}

	@RequestMapping("/deleteUser")
	public String userList(int id) {
		System.out.println(id);
		userService.deleteUser(id);
		return "selectList";
	}

	/**
	 * 查询用户列表
	 * 
	 * @return
	 */
	@RequestMapping("/selectList")
	public String userList1(Model model, @RequestParam(required = true, defaultValue = "1") Integer page,
			@RequestParam(required = false, defaultValue = "4") Integer pageSize) {
		// PageHelper.startPage(1, 5);
		PageHelper.startPage(page, pageSize);
		List<User> user = userService.userList();
		PageInfo<User> p = new PageInfo<User>(user);
		model.addAttribute("page", p);
		model.addAttribute("user", user);
		return "listUser.jsp";
	}

}
