package bir.ebook.mapper;

import java.util.List;

import bir.ebook.domain.DetailEbookVO;
import bir.ebook.domain.DetailMemberInfoVO;
import bir.ebook.domain.EbookVO;
import bir.ebook.domain.InsertMemberStarVO;
import bir.ebook.domain.Member_starVO;


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
