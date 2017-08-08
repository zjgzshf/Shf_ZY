package org.niit.com.controller;

import java.util.List;

import org.niit.com.bean.UserInfo;
import org.niit.com.mapper.IInfo;
import org.niit.com.service.DbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/info")
public class UserInfoController {
	private IInfo infoDao;
	private DbService ds;

	@Autowired
	public void setInfoDao(IInfo infoDao) {
		this.infoDao = infoDao;
	}

	@Autowired
	public void setDs(DbService ds) {
		this.ds = ds;
	}

	@RequestMapping
	public String showInfos(ModelMap model) {

		List<UserInfo> infoList = infoDao.queryInfos();
		model.addAttribute("infoList", infoList);

		return "showInfo";
	}

	@RequestMapping("/login")
	public String showLogin(ModelMap model) {
		return "login";
	}

	@RequestMapping("/loginData")
	public String login(String loginname, String password, ModelMap model) {
		// 校验
		if ("".equals(loginname) || null == loginname) {
			model.addAttribute("msg", "姓名不能为空!");
			return "login";
		}
		// 校验
		if ("".equals(password) || null == password) {
			model.addAttribute("msg", "密码不能为空!");
			return "login";
		}

		// 登录
		UserInfo user = infoDao.login(loginname, password);
		if (user == null) {
			model.addAttribute("msg", "用户不存在");
			return "redirect:login";
		} else {
			return "redirect:/info";
		}

	}

	@RequestMapping("/register")
	public String showRegister(ModelMap model) {
		return "register";
	}

	@RequestMapping("/registerData")
	public String registerData(@RequestParam("loginname") String name,
			@RequestParam("password") String password, String introduction,
			ModelMap model) {
		// 校验
		if ("".equals(name) || null == name) {
			model.addAttribute("msg", "姓名不能为空!");
			return "register";
		}
		// 校验
		if ("".equals(password) || null == password) {
			model.addAttribute("msg", "密码不能为空!");
			return "register";
		}

		// 数据保存
		UserInfo info = new UserInfo();
		info.setLoginname(name);
		info.setPassword(password);
		info.setIntroduction(introduction);
		int result = infoDao.insertInfo(info);
		
		model.addAttribute("msg", "注册成功,请登录!");
		
		return "redirect:login";
	}

	@RequestMapping("/insert")
	public String insertInfo() {
		return "insertInfo";
	}

	@RequestMapping("/insertData")
	public String insertInfo(@RequestParam("loginname") String name,
			@RequestParam("password") String password, String introduction,
			ModelMap model) {
		// 校验
		if ("".equals(name) || null == name) {
			model.addAttribute("msg", "姓名不能为空!");
			return "insertInfo";
		}

		// 数据保存
		UserInfo info = new UserInfo();
		info.setLoginname(name);
		info.setPassword(password);
		info.setIntroduction(introduction);
		int result = infoDao.insertInfo(info);

		return "redirect:/info";
	}

	@RequestMapping("/update")
	public String updateInfo(int id, ModelMap model) {
		UserInfo info = infoDao.queryInfo(id);
		if (info != null) {
			model.addAttribute("info", info);
		}

		return "updateInfo";
	}

	@RequestMapping("/updateData")
	public String updateInfo(UserInfo info, ModelMap model) {
		// 校验
		if ("".equals(info.getLoginname()) || null == info.getLoginname()) {
			model.addAttribute("msg", "用户名不能为空");
			return "updateInfo";
		}
		if ("".equals(info.getPassword()) || null == info.getPassword()) {
			model.addAttribute("msg", "用户名不能为空");
			return "updateInfo";
		}

		// 数据保存
		int result = infoDao.updateInfo(info);

		return "redirect:/info";
	}

	@RequestMapping("/delete")
	public String deleteInfo(int id, ModelMap model) {
		int result = infoDao.deleteInfo(id);

		return "redirect:/info";
	}

}
