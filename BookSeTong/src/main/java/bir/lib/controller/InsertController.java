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
public class InsertController {
	
	@Autowired
	Member_infoService service;
	
	@RequestMapping(value = "/insert.bir", method = RequestMethod.GET)
	public String get(Member_infoVO vo) {
		return "join"; 
	}
	
	
	@RequestMapping(value = "/insert.bir", method = RequestMethod.POST)
	public String post(Member_infoVO vo, HttpServletRequest request) {
		service.insertMember_info(vo);
		HttpSession session = request.getSession(true);
		
		session.setAttribute("userId", vo.getEmail()); 
		session.setAttribute("userName", vo.getName()); 
		System.out.println("session : " + session.getAttribute("userId"));
		System.out.println("session : " + session.getAttribute("userName"));
		
		return "joinComplete";
	}
	
}
