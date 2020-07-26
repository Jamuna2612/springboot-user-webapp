package com.apex.user.service;

import java.util.List;

import com.apex.user.dto.UserInfoDto;
import com.apex.user.dto.UserInfoListDto;


public interface UserService {

	public UserInfoDto getUser(int id);
	public void deleteUser(int id);
	public List<UserInfoDto> getAllUsers();
	public void saveUser(UserInfoDto userinfo);

	
}
