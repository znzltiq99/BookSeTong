package bir.lib.impl;

import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bir.lib.domain.DetailEbookVO;
import bir.lib.domain.DetailMemberInfoVO;
import bir.lib.domain.EbookVO;
import bir.lib.domain.InsertMemberStarVO;
import bir.lib.domain.Member_starVO;
import bir.lib.mapper.EbookMapper;
import bir.lib.service.EbookService;


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
	public List<Member_starVO> getMemberStar() {
		List<Member_starVO> list = mapper.getMemberStar();
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
	public DetailMemberInfoVO getDetailMemberInfo() {
		DetailMemberInfoVO vo= mapper.getDetailMemberInfo();
		return vo;
	}
	
	@Override
	public void updateBmoney(DetailMemberInfoVO vo) {
		mapper.updateBmoney(vo);
		
	}	

}




