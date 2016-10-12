package com.wind.yoleo.repository;

import org.springframework.stereotype.Repository;

import com.wind.yoleo.common.model.Friend;

@Repository
public interface FriendMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Friend record);

	int insertSelective(Friend record);

	Friend selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Friend record);

	int updateByPrimaryKey(Friend record);
}