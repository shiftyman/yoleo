package com.wind.yoleo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wind.yoleo.common.model.User;
import com.wind.yoleo.repository.UserMapper;

@Service
public class TestService {

	@Autowired
	private UserMapper userMapper;

	public User hello() {
		return userMapper.selectByPrimaryKey(1L);
	}

}
