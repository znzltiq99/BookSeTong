package bir.lib.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bir.lib.domain.Member_infoVO;
import bir.lib.mapper.Member_infoMapper;
import bir.lib.service.Member_infoService;




@Component  
public class Member_infoImpl implements Member_infoService {
	@Autowired  
	Member_infoMapper mapper;

	@Override
	public void insertMember_info(Member_infoVO vo) {
		mapper.insertMember_info(vo);
	}

	@Override
	public Member_infoVO checkLogin(Member_infoVO vo) {
		Member_infoVO check = mapper.checkLogin(vo);
		return check;
	}
}
