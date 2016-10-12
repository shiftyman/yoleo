package com.wind.yoleo.repository;

import org.springframework.stereotype.Repository;

import com.wind.yoleo.common.model.Post;

@Repository
public interface PostMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Post record);

	int insertSelective(Post record);

	Post selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Post record);

	int updateByPrimaryKey(Post record);
}