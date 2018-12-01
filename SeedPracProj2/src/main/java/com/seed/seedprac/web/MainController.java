package com.seed.seedprac.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

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
	@RequestMapping("/seed/prac/testAjax")
	public String gototestAjax() {
		///SeedPracProj/src/main/webapp/WEB-INF/views/boards/board1.jsp
		return "boards/testAjax.tiles";
	}
	@RequestMapping("/seed/prac/result")
	public String result() {
		///SeedPracProj/src/main/webapp/WEB-INF/views/boards/board1.jsp
		return "ajax/result.tiles";
	}
	@RequestMapping("/seed/prac/gotoLogIn")
	public String gotoLogin() {
		///SeedPracProj/src/main/webapp/WEB-INF/views/boards/board1.jsp
		return "";
	}
}
