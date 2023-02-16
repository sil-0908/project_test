package com.test.test1.video.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.test1.video.dto.CommentDto;

@Repository
public class CommentDao {
	
	@Autowired
	SqlSession sqlSession;

	public void insert(CommentDto dto) {
		sqlSession.insert("comment.insert", dto);
	}

}
