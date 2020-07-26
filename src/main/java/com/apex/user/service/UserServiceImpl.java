package com.apex.user.service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.apex.user.dto.UserInfoDto;
import com.apex.user.dto.UserInfoListDto;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	RestTemplate restTemplate;

	private static final String GET_USER_BY_ID = "http://localhost:8080/v1/users/{id}";
	private static final String DELETE_USER_BY_ID = "http://localhost:8080/v1/users/{id}";
	private static final String GET_ALL_USERS = "http://localhost:8080/v1/users";
	private static final String CREATE_USER = "http://localhost:8080/v1/users";
	private static final String UPDATE_USER = "http://localhost:8080/v1/users";
	static final String UPDATE_USER_PREFIX = "http://localhost:8080/v1/users";

	public UserInfoDto getUser(int id) {
		Map<String, Integer> map = new HashMap<>();
		map.put("id", id);
		RestTemplate restTemplate = new RestTemplate();
		UserInfoDto userinfo = restTemplate.getForObject(GET_USER_BY_ID, UserInfoDto.class, map);
		return userinfo;
	}

	public void deleteUser(int id) {
		Map<String, Integer> map = new HashMap<>();
		map.put("id", id);
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.delete(DELETE_USER_BY_ID, map);
	}

	public List<UserInfoDto> getAllUsers() {
		RestTemplate restTemplate = new RestTemplate();
		UserInfoListDto response = restTemplate.getForObject(GET_ALL_USERS, UserInfoListDto.class);
		return response.getUserInfoDto();
	}

	public void saveUser(UserInfoDto userinfo) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<UserInfoDto> requestBody = new HttpEntity<>(userinfo, headers);
		if (userinfo.getUserid() == 0) {
			restTemplate.postForEntity(CREATE_USER, requestBody, UserInfoDto.class);
		} else {
			restTemplate.exchange(UPDATE_USER, HttpMethod.PUT, requestBody, Void.class);
		}
	}

}
