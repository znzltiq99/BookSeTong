package bir.lib.mapper;

import java.util.List;

import bir.lib.domain.DetailEbookVO;
import bir.lib.domain.DetailMemberInfoVO;
import bir.lib.domain.EbookVO;
import bir.lib.domain.InsertMemberStarVO;
import bir.lib.domain.Member_starVO;


public interface EbookMapper {
		public EbookVO getBooks();  
		public List<EbookVO> getEbooks();
		public List<DetailEbookVO> getDetailEbooks();
		public List<Member_starVO> getMemberStar();
		public void insertMemberStar(InsertMemberStarVO vo);
		public void updateMemberStar(InsertMemberStarVO vo);
		public DetailEbookVO getDetailEbook(String bnum);
		public DetailMemberInfoVO getDetailMemberInfo();
		public void updateBmoney(DetailMemberInfoVO vo);
}
