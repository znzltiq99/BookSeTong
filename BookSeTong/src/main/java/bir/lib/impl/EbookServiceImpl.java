package bir.lib.impl;

import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bir.ebook.domain.DetailEbookVO;
import bir.ebook.domain.DetailMemberInfoVO;
import bir.ebook.domain.EbookVO;
import bir.ebook.domain.InsertListVO;
import bir.ebook.domain.InsertMemberStarVO;
import bir.ebook.domain.Member_starVO;
import bir.ebook.service.EbookService;
import bir.ebook.domain.EbookVO;
import bir.ebook.mapper.EbookMapper;
import bir.ebook.service.EbookService;


@Component("ebook") 
public class EbookServiceImpl implements EbookService{
	

	@Autowired
	EbookMapper mapper;

	@Override
	public EbookVO getBooks() {
		return  mapper.getBooks();
	}
	
	@Override
	public List<EbookVO> getEbooks() {
		List<EbookVO> list = mapper.getEbooks();
		return list;
	}

	@Override
	public List<DetailEbookVO> getDetailEbooks() {
		List<DetailEbookVO> list = mapper.getDetailEbooks();
		return list;
	}
	
	@Override
	public List<Member_starVO> getMemberStar(String email) {
		List<Member_starVO> list = mapper.getMemberStar(email);
		return list;
	}

	@Override
	public void insertMemberStar(InsertMemberStarVO vo) {
		mapper.insertMemberStar(vo);
		
	}

	@Override	
	public void updateMemberStar(InsertMemberStarVO vo) {
		mapper.updateMemberStar(vo);
		
	}
	
	@Override
	public DetailEbookVO getDetailEbook(String bnum) {
		DetailEbookVO vo= mapper.getDetailEbook(bnum);
		return vo;
	}

	@Override
	public DetailMemberInfoVO getDetailMemberInfo(String email) {
		DetailMemberInfoVO vo= mapper.getDetailMemberInfo(email);
		return vo;
	}
	
	@Override
	public void updateBmoney(DetailMemberInfoVO vo) {
		mapper.updateBmoney(vo);
		
	}

	@Override
	public void insertPointList(InsertListVO vo) {
		mapper.insertPointList(vo);
	}

	@Override
	public void insertPurchaseList(InsertListVO vo) {
		mapper.insertPurchaseList(vo);
		
	}	
	
	
	

}




