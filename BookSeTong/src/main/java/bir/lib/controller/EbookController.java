package bir.lib.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import bir.lib.domain.DetailEbookVO;
import bir.lib.domain.DetailMemberInfoVO;
import bir.lib.domain.EbookVO;
import bir.lib.domain.InsertMemberStarVO;
import bir.lib.domain.Member_starVO;
import bir.lib.service.EbookService;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class EbookController {
	@Autowired
	EbookService service;
	
	@RequestMapping(value = "/ebook.bir", method = RequestMethod.GET)
	public String list(Model model) {		
		
		List<DetailEbookVO> list = service.getDetailEbooks();
	    model.addAttribute("list",list);
		
		List<Member_starVO> memberstar_list = service.getMemberStar();
		model.addAttribute("memberstar_list",memberstar_list);
		return "ebook"; 
	}
	
	@RequestMapping(value = "/insert.bir", method = RequestMethod.POST)
	public void post( HttpServletResponse res, Model model,String bnum, String sval) {				
		//입력화면에서 받아온 값을 db에 insert 시켜줌 
		
		service.insertMemberStar(new InsertMemberStarVO(bnum,sval)); //db에 insert
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 //논리적인 화면 정보 
	}
	
	@RequestMapping(value = "/update.bir", method = RequestMethod.POST)
	public void post2( HttpServletResponse res, Model model,String bnum, String sval) {				
		//입력화면에서 받아온 값을 db에 insert 시켜줌 
		
		service.updateMemberStar(new InsertMemberStarVO(bnum,sval)); //db에 insert
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 //논리적인 화면 정보 
	}
	
	@RequestMapping(value = "/ebookbuy.bir", method = RequestMethod.POST)
	public String buy(Model model,String bnum) {		
		
		DetailEbookVO vo1 = service.getDetailEbook(bnum);
	    model.addAttribute("vo1",vo1);
	    
	    DetailMemberInfoVO vo2 = service.getDetailMemberInfo();
	    model.addAttribute("vo2",vo2);
	    
		return "ebookBuy"; 
	}
	
	@RequestMapping(value = "/updateBmoney.bir", method = RequestMethod.POST)
	public void post3( HttpServletResponse res, Model model,String email,int point) {				
	 
		service.updateBmoney(new DetailMemberInfoVO(email,point)); 
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping(value = "/goEbook.bir", method = RequestMethod.POST)
	public void goEbook( HttpServletResponse res) {				
	 
	
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	


}
