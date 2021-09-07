package com.cw.s4.util;

public class Pager {
	
	private String kind;
	private String search;
	
	private Long pn;
	private Long perPage;
	private Long startRow;
	private Long lastRow;
	
	private Long startNum;
	private Long lastNum;
	
	private Long totalPage;
	
	public void makeRow() {
		this.startRow = this.getPerPage()*(this.getPn()-1)+1;
		this.lastRow = this.getPerPage()*this.getPn();
	}
	
	public void makeNum(Long totalCount) {
		this.totalPage=totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() !=0) {
			this.totalPage++;
		}
		
		Long totalBlock=this.totalPage/5;
		if(this.totalPage%5 != 0) {
			totalBlock++;
		}
		
		if(totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		
		Long curBlock = this.getPn()/5;
		if(this.getPn()%5 != 0) {
			curBlock++;
		}
		
		this.startNum = 5*(curBlock-1)+1;
		this.lastNum = curBlock*5;
		
		if(totalBlock == curBlock) {
			this.lastNum = this.totalPage;
		}
		
	}

	public Long getPn() {
		if(this.pn==null || this.pn <=0) {
			this.pn=1L;
		}
		return pn;
	}

	public void setPn(Long pn) {
		this.pn = pn;
	}

	public Long getPerPage() {
		if(this.perPage==null || this.perPage ==0) {
			this.perPage=10L;
		}
		return perPage;
	}

	public void setPerPage(Long perPage) {
		this.perPage = perPage;
	}

	public Long getStartRow() {
		return startRow;
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getLastRow() {
		return lastRow;
	}

	public void setLastRow(Long lastRow) {
		this.lastRow = lastRow;
	}

	public Long getStartNum() {
		return startNum;
	}

	public void setStartNum(Long startNum) {
		this.startNum = startNum;
	}

	public Long getLastNum() {
		return lastNum;
	}

	public void setLastNum(Long lastNum) {
		this.lastNum = lastNum;
	}

	public Long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Long totalPage) {
		this.totalPage = totalPage;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getSearch() {
		if(this.search == null) {
			this.search="";
		}
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
	
	

}
