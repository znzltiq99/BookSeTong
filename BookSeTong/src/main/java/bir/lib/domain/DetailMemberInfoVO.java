package bir.lib.domain;

public class DetailMemberInfoVO {
	private String email;
	private int point;
	
	
	public DetailMemberInfoVO() {
		super();
	}


	public DetailMemberInfoVO(String email, int point) {
		super();
		this.email = email;
		this.point = point;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getPoint() {
		return point;
	}


	public void setPoint(int point) {
		this.point = point;
	}
	
	
}
