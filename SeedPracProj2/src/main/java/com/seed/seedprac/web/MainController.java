package com.seed.seedprac.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.seed.seedprac.service.Cola_MemberService;

@Controller
public class MainController {

	@Resource(name = "cola_MemberService")
	private Cola_MemberService service;
	
	@RequestMapping("/seed/prac/gotohome")
	public String gotoHome() {
		///SeedPracProj/src/main/webapp/WEB-INF/views/boards/board1.jsp
		return "home.tiles";
	}
	@RequestMapping("/seed/prac/gotoboard1")
	public String gotoBoard1() {
		///SeedPracProj/src/main/webapp/WEB-INF/views/boards/board1.jsp
		return "boards/board1.tiles";
	}
	@RequestMapping("/seed/prac/gotoLoginPage.do")
	public String gotoLogin() {
		
		return "boards/Login.tiles";
	}
	@RequestMapping(value="/seed/prac/gotoLoginProcess.do", method = RequestMethod.POST)
	public String gotoLoginProcess(@RequestParam Map map,Model model,HttpSession session) {
		
		//값 확인하기
		System.out.println(map.get("id"));
		System.out.println(map.get("pwd"));
		
		
		session.setAttribute("test", "이건 테스트 입니다");
		
		boolean isMember=service.isColaMember(map);
		System.out.println("회원이:"+isMember);
		if(isMember) {
			session.setAttribute("id", map.get("id"));
			System.out.println(session.getAttribute("id"));
			return "redirect:/";
		}
		else {
			model.addAttribute("isNotMember", "아이디와 비밀번호가 일치하지 않습니다");
			return "forward:/seed/prac/gotoLoginPage.do";
		}
	}
}
