package bir.lib.service;

import bir.ebook.domain.Member_infoVO;



public interface Member_infoService {
		public void insertMember_info(Member_infoVO vo);
		public Member_infoVO checkLogin(Member_infoVO vo);
}
