package com.test.test1.user.service;

import java.util.List;
import java.util.Map;

import com.test.test1.user.dto.UserDto;

public interface UserService {


	boolean create(UserDto userDto);

	String login(UserDto userDto);

	String idCheck(String id);
	
	String emailCheck(String email);
	
	int userIdx(String user);

	String findid(String email);

	String findpw(UserDto dto);

	void changepw(UserDto dto);

	void paid(Map<String, Object> map);

	// 개인정보상세조회  
	UserDto detail(String user_id);

//	video detail 내 댓글등록 위해 유저정보 받아오기 02.20 장민실
	int getid(String user_id);






	
	


}

