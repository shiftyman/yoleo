package com.wind.yoleo.repository;

import org.springframework.stereotype.Repository;

import com.wind.yoleo.common.model.Order;

@Repository
public interface OrderMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Order record);

	int insertSelective(Order record);

	Order selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Order record);

	int updateByPrimaryKey(Order record);
}