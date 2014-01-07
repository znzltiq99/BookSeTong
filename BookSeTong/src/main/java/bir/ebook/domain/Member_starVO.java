package bir.ebook.domain;

public class Member_starVO {
	private int bnum;
	private String email;
	private int snum;
	private int bstar;
	
	public Member_starVO() {
		super();
	}
	
	public Member_starVO(int bnum, String email, int snum, int bstar) {
		super();
		this.bnum = bnum;
		this.email = email;
		this.snum = snum;
		this.bstar = bstar;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSnum() {
		return snum;
	}

	public void setSnum(int snum) {
		this.snum = snum;
	}

	public int getBstar() {
		return bstar;
	}

	public void setBstar(int bstar) {
		this.bstar = bstar;
	}
	
}
