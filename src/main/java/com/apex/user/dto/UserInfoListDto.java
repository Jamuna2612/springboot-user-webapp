package com.apex.user.dto;

import java.util.List;


public class UserInfoListDto {

	private List<UserInfoDto> userInfoDto;

	public List<UserInfoDto> getUserInfoDto() {
		return userInfoDto;
	}

	public void setUserInfoDto(List<UserInfoDto> userInfoDto) {
		this.userInfoDto = userInfoDto;
	}

	@Override
	public String toString() {
		return "UserInfoListDto [userInfoDto =" + userInfoDto + "]";
	}

}
