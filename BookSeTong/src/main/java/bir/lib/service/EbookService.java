package bir.lib.service;

import java.util.List;

import bir.lib.domain.DetailEbookVO;
import bir.lib.domain.DetailMemberInfoVO;
import bir.lib.domain.EbookVO;
import bir.lib.domain.InsertListVO;
import bir.lib.domain.InsertMemberStarVO;
import bir.lib.domain.Member_starVO;





public interface EbookService {
	public EbookVO getBooks(); 
	public List<EbookVO> getEbooks();
	public List<DetailEbookVO> getDetailEbooks();
	public List<Member_starVO> getMemberStar(String email);
	public void insertMemberStar(InsertMemberStarVO vo);
	public void updateMemberStar(InsertMemberStarVO vo);
	public DetailEbookVO getDetailEbook(String bnum);
	public DetailMemberInfoVO getDetailMemberInfo(String email);
	public void updateBmoney(DetailMemberInfoVO vo);
	public void insertPointList(InsertListVO vo);
	public void insertPurchaseList(InsertListVO vo);
	
}
