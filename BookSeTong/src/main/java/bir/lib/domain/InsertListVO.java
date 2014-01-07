package bir.lib.domain;

public class InsertListVO {
	private int bnum;
    private String email;
    private String title;
    private int eb_point;
    
    
    
	public InsertListVO() {
		super();
	}



	public InsertListVO(int bnum, String email, String title, int eb_point) {
		super();
		this.bnum = bnum;
		this.email = email;
		this.title = title;
		this.eb_point = eb_point;
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



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public int getEb_point() {
		return eb_point;
	}



	public void setEb_point(int eb_point) {
		this.eb_point = eb_point;
	}	
	
}

