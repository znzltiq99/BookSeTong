package bir.lib.domain;

public class Member_infoVO {
	private String email;
	private String name;
	private String pass;
	private String byear;
	private String bmonth;
	private String bday;
	private int point;
	
	public Member_infoVO(){
		
	}

	public Member_infoVO(String email, String name, String pass, String byear,
			String bmonth, String bday) {
		super();
		this.email = email;
		this.name = name;
		this.pass = pass;
		this.byear = byear;
		this.bmonth = bmonth;
		this.bday = bday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getByear() {
		return byear;
	}

	public void setByear(String byear) {
		this.byear = byear;
	}

	public String getBmonth() {
		return bmonth;
	}

	public void setBmonth(String bmonth) {
		this.bmonth = bmonth;
	}

	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	
	
	
	
}
