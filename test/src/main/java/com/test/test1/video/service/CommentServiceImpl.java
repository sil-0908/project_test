package com.test.test1.video.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.test1.video.dao.CommentDao;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	CommentDao commentDao;

}
