package org.niit.com.service;

import java.util.List;

import org.niit.com.bean.UserInfo;

public interface DbService {
	
	public void showMsg();

	public int insert(UserInfo info);
	
	public int delete(int id);
	
	public int update(UserInfo info);
	
	public List<UserInfo> getInfo(int id);
	
}
