package com.test.test1.video.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDao {
	
	@Autowired
	SqlSession sqlSession;

}
