package com.test.test1.video.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.test.test1.user.service.UserService;
import com.test.test1.video.dto.CommentDto;
import com.test.test1.video.service.CommentService;
import com.test.test1.video.service.VideoService;

@Controller
@RequestMapping("comt/**")
public class CommentController {
	 
	@Autowired
	CommentService commentService;	
	@Autowired
	UserService userService;
	@Autowired
	VideoService videoService;
	
	@RequestMapping("write")
	public ModelAndView insert(int video_id, CommentDto dto, HttpSession session, ModelAndView mv) {
		System.out.println(video_id);
		String id = session.getAttribute("user_id").toString();
//		int video_id = videoService.getvideo_id(id);
		int userid = userService.getid(id);
		dto.setUser_id(id);
//		System.out.println("dfkjsadfj;lasdjflkasdjls : " + dto.toString());
		mv.setViewName("video/detail/{video_id}");
		commentService.insert(dto);
		return mv;
	}
	
	
	
	
	
	
	
	
	
	

}
