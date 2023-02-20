package com.test.test1.video.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.test1.video.dao.CommentDao;
import com.test.test1.video.dto.CommentDto;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentDao commentDao;

//	video detail 내 댓글등록 02.20 장민실
	@Override
	public void insert(CommentDto dto) {
		commentDao.insert(dto);
	}

	

	

}
