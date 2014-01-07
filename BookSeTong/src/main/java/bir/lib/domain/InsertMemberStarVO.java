package bir.lib.domain;

public class InsertMemberStarVO {
	private String bnum;
	private String sval;
	private String email;
	
	public InsertMemberStarVO() {
		super();
	}

	public InsertMemberStarVO(String bnum, String sval, String email) {
		super();
		this.bnum = bnum;
		this.sval = sval;
		this.email = email;
	}

	public String getBnum() {
		return bnum;
	}

	public void setBnum(String bnum) {
		this.bnum = bnum;
	}

	public String getSval() {
		return sval;
	}

	public void setSval(String sval) {
		this.sval = sval;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
