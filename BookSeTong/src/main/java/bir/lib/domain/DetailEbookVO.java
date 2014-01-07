package bir.lib.domain;

public class DetailEbookVO {
	private String title;
	private String author;
	private String pub;
	private String img;
	private int eb_price;
	private String bnum;
	
	
	public DetailEbookVO() {
		super();
	}


	public DetailEbookVO(String title, String author, String pub, String img,
			int eb_price, String bnum) {
		super();
		this.title = title;
		this.author = author;
		this.pub = pub;
		this.img = img;
		this.eb_price = eb_price;
		this.bnum = bnum;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getPub() {
		return pub;
	}


	public void setPub(String pub) {
		this.pub = pub;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public int getEb_price() {
		return eb_price;
	}


	public void setEb_price(int eb_price) {
		this.eb_price = eb_price;
	}


	public String getBnum() {
		return bnum;
	}


	public void setBnum(String bnum) {
		this.bnum = bnum;
	}
	
	
}

