package com.study.springboot.jdbc;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IDao 
{
	ArrayList<UserDTO> getEmployee();
}
