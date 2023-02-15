package com.test.test1.video.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.test1.video.dto.VideoDto;

@Repository
public class VideoDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int insert(Map<String, Object> map) {
		
		return this.sqlSessionTemplate.insert("video.insert", map);
		  
	}
	
//	video_list 전체조회 - 02.10 장민실
	public List<VideoDto> list() {
		return sqlSessionTemplate.selectList("video.list");
	}

//	video_detail -  02.10 장민실
	public VideoDto detail(int video_id) {
		return sqlSessionTemplate.selectOne("video.detail", video_id);
	}

	public List<VideoDto> actor(int video_id) {
		return sqlSessionTemplate.selectList("video.actor", video_id);
	}

	
	
//	//상세조회 -02.07 배철우
//	public Map<String, Object> selectDetail(Map<String,Object> map) {
//		// selectOne:데이터를 한개만 가져올때 사용 
//		return this.sqlSessionTemplate.selectOne("video.select_detail",map);
//		
//	}

	
	
}
