package bir.lib.domain;

public class Book_infoVO {
	private int bnum;
	private String title;
	private String author;
	private String pub;
	private String bdate;
	private String genre;
	private String img;
	private String summary;
	private int btar;
	
	public Book_infoVO(){};
	
	public Book_infoVO(int bnum, String title, String author, String pub,
			String bdate, String genre, String img, String summary, int btar) {
		super();
		this.bnum = bnum;
		this.title = title;
		this.author = author;
		this.pub = pub;
		this.bdate = bdate;
		this.genre = genre;
		this.img = img;
		this.summary = summary;
		this.btar = btar;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
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

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public int getBtar() {
		return btar;
	}

	public void setBtar(int btar) {
		this.btar = btar;
	}
	
	
	
}


