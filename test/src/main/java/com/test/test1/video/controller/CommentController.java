//package com.test.test1.video.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.test.test1.user.service.UserService;
//import com.test.test1.video.dto.CommentDto;
//import com.test.test1.video.service.CommentService;
//
//@Controller
//@RequestMapping("comt/**")
//public class CommentController {
//	
//	@Autowired
//	CommentService commentService;
//	
//	@Autowired
//	UserService userService;	
//	
//	@RequestMapping("write")
//	public void insert(CommentDto dto, HttpSession session) {
//		String id = session.getAttribute("user_id").toString();
//		int userid = userService.getid(id);
//		dto.setUser_id(userid);
//		commentService.insert(dto);
//	}
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//
//}
