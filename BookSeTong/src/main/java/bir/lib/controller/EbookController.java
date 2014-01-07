package bir.lib.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bir.lib.domain.DetailEbookVO;
import bir.lib.domain.DetailMemberInfoVO;
import bir.lib.domain.InsertListVO;
import bir.lib.domain.InsertMemberStarVO;
import bir.lib.domain.Member_starVO;
import bir.lib.service.EbookService;


@Controller
public class EbookController {
	@Autowired
	EbookService service;
	
	@RequestMapping(value = "/ebook.bir", method = RequestMethod.GET)
	public String list(Model model,HttpServletRequest request) {		
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		List<DetailEbookVO> list = service.getDetailEbooks();
	    model.addAttribute("list",list);
		
		List<Member_starVO> memberstar_list = service.getMemberStar(email2);
		model.addAttribute("memberstar_list",memberstar_list);
		return "ebook"; 
	}
	
	@RequestMapping(value = "/insertStar.bir", method = RequestMethod.POST)
	public void post( HttpServletResponse res,HttpServletRequest request, Model model,String bnum, String sval) {				
		//입력화면에서 받아온 값을 db에 insert 시켜줌 
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		service.insertMemberStar(new InsertMemberStarVO(bnum,sval,email2)); //db에 insert
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 //논리적인 화면 정보 
	}
	
	@RequestMapping(value = "/update.bir", method = RequestMethod.POST)
	public void post2( HttpServletResponse res, HttpServletRequest request,Model model,String bnum, String sval) {				
		//입력화면에서 받아온 값을 db에 insert 시켜줌 
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		service.updateMemberStar(new InsertMemberStarVO(bnum,sval,email2)); //db에 insert
		try {
			res.sendRedirect("ebook.bir");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 //논리적인 화면 정보 
	}
	
	@RequestMapping(value = "/ebookbuy.bir", method = RequestMethod.POST)
	public String buy(Model model,HttpServletRequest request,String bnum) {		
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		DetailEbookVO vo1 = service.getDetailEbook(bnum);
	    model.addAttribute("vo1",vo1);
	    
	    DetailMemberInfoVO vo2 = service.getDetailMemberInfo(email2);
	    model.addAttribute("vo2",vo2);
	    
		return "ebookBuy"; 
	}
	
	@RequestMapping(value = "/updateBmoney.bir", method = RequestMethod.POST)
	public void post3( HttpServletResponse res,HttpServletRequest request, Model model,String email,
			int point,int bnum,String title,int eb_point) {				
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		service.updateBmoney(new DetailMemberInfoVO(email2,point)); 
		service.insertPointList(new InsertListVO(bnum,email2,title+" ebook 구매",eb_point)); 
		service.insertPurchaseList(new InsertListVO(bnum,email2,title,eb_point)); 
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
	
	@RequestMapping(value = "/event2.bir", method = RequestMethod.GET)
	public String evnet2( HttpServletResponse res) {				
		return "event2"; 	
	}
	
	@RequestMapping(value = "/insertCardPoint.bir", method = RequestMethod.POST)
	public String insertCardPoint(HttpServletResponse res,HttpServletRequest request, Model model,String eb_point) {		
		HttpSession session = request.getSession(true);
		String email2 = (String)session.getAttribute("userId");
		DetailMemberInfoVO vo2 = service.getDetailMemberInfo(email2);
		int myPoint = vo2.getPoint();
		if(eb_point != null){
			if(eb_point.equals("0")){
				System.out.println("나는 영이다");
			}else{
			int point = Integer.parseInt(eb_point);
			service.updateBmoney(new DetailMemberInfoVO(email2,point+myPoint)); 
			service.insertPointList(new InsertListVO(0,email2,"카드 뒤집기 Event",point)); 
			}
		}else{
			System.out.println("");
		}
		return "event2"; 
	}
	  


}
