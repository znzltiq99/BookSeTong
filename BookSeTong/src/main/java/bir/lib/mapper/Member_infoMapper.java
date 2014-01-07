package bir.lib.mapper;

import java.util.List;

import bir.lib.domain.Member_infoVO;


public interface Member_infoMapper {
	public void insertMember_info(Member_infoVO vo);
	public Member_infoVO checkLogin(Member_infoVO vo);
	
}
