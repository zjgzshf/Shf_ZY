package org.niit.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.niit.com.bean.UserInfo;

public interface IInfo {
	
	public List<UserInfo> queryInfos();
	
	public UserInfo queryInfo(int id);
	
	public int insertInfo(UserInfo info);
	
	public int deleteInfo(int id);
	
	public int updateInfo(UserInfo info);
	public UserInfo login(@Param("loginname") String loginname,@Param("password") String password);
	public int register(UserInfo info);
	
}
