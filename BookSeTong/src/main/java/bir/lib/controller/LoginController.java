package bir.lib.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bir.lib.domain.Member_infoVO;
import bir.lib.service.Member_infoService;




@Controller
public class LoginController {
	
	@Autowired
	Member_infoService service;
	
	@RequestMapping(value = "/login.bir", method = RequestMethod.GET)
	public String get(Member_infoVO vo) {
		//db작업은 없고 화면만 띄어 줌.
		return "login"; 
	}
	
	
	@RequestMapping(value = "/login.bir", method = RequestMethod.POST)
	public String post(Member_infoVO vo, HttpServletRequest request) {
		System.out.println(vo.getEmail() + vo.getPass());
		
			Member_infoVO check = service.checkLogin(vo);
			HttpSession session = request.getSession(true);
			
			if(check != null){
				session.setAttribute("userId", check.getEmail()); 
				session.setAttribute("userName", check.getName()); 
				System.out.println("session : " + session.getAttribute("userId"));
				System.out.println("session : " + session.getAttribute("userName"));
				return "home";
			}
			else{
				return "loginFailed";							
			}
		
	}
	
}

