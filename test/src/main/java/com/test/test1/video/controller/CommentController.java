package com.test.test1.video.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.test1.user.service.UserService;
import com.test.test1.video.dto.CommentDto;
import com.test.test1.video.dto.VideoDto;
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
	public ModelAndView insert(String test, CommentDto dto, HttpSession session, ModelAndView mv) {
		System.out.println("dfkjsadfj;lasdjflkasdjls : " + dto.toString());
		System.out.println(test);
		String id = session.getAttribute("user_id").toString();
		int video_id = videoService.getvideo_id(id);
//		int userid = userService.getid(id);
//		dto.setUser_id(userid);
		System.out.println("dfkjsadfj;lasdjflkasdjls : " + dto.toString());
		mv.setViewName("video/detail/{video_id}");
//		commentService.insert(dto);
		return null;
	}
	
	
	
	
	
	
	
	
	
	

}
