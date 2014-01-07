package bir.lib.domain;

public class InsertMemberStarVO {
	private String bnum;
	private String sval;
	
	public InsertMemberStarVO(String bnum, String sval) {
		super();
		this.bnum = bnum;
		this.sval = sval;
	}

	public InsertMemberStarVO() {
		super();
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

	
}
