package com.test.test1.video.service;

import java.util.List;

import com.test.test1.video.dto.CommentDto;

public interface CommentService {

//	video detail 내 댓글등록 02.20 장민실
	void insert(CommentDto dto);

	List<CommentDto> replyList();

	

}
