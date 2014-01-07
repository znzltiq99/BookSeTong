package bir.ebook.domain;

public class EbookVO {
	private int bnum;
	private int eb_num;
	private int eb_price;

	public EbookVO(){
		
	}

	public EbookVO(int bnum, int eb_num, int eb_price) {
		super();
		this.bnum = bnum;
		this.eb_num = eb_num;
		this.eb_price = eb_price;
	}

	public int getBnum() {
		return bnum;
	}

	public void setBnum(int bnum) {
		this.bnum = bnum;
	}

	public int getEb_num() {
		return eb_num;
	}

	public void setEb_num(int eb_num) {
		this.eb_num = eb_num;
	}

	public int getEb_price() {
		return eb_price;
	}

	public void setEb_price(int eb_price) {
		this.eb_price = eb_price;
	}

	
	
}
