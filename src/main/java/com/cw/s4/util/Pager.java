package com.cw.s4.util;

public class Pager {
	//검색
	private String kind;
	private String search;
	
	private Long pn;
	//한 페이지에 출력할 글의 개수
	private Long perPage;
	private Long startRow;
	private Long lastRow;
	
	//한 페이지에 출력할 pn의 개수
	private Long perBlock;
	
	private Long startNum;
	private Long lastNum;
	
	private Long totalPage;
	
	//한 페이지 넘버 안에 들어갈 rownum의 startrow, lastrow
	public void makeRow() {
		this.startRow = this.getPerPage()*(this.getPn()-1)+1;
		this.lastRow = this.getPerPage()*this.getPn();
	}
	
	//block의 startnum, lastnum 구하기 jsp에서 사용
	public void makeNum(Long totalCount) {
		//totalCount : 전체 글의 개수
		//totalPage : 전체 페이지 개수
		this.totalPage=totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() !=0) {
			this.totalPage++;
		}
		
		Long totalBlock=this.totalPage/this.getPerBlock();
		if(this.totalPage%this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		if(totalPage<this.getPn()) {
			this.setPn(totalPage);
		}
		//pn으로 현재 블록 번호 구하기
		Long curBlock = this.getPn()/this.getPerBlock();
		if(this.getPn()%this.getPerBlock() != 0) {
			curBlock++;
		}
		
		this.startNum = this.getPerBlock()*(curBlock-1)+1;
		this.lastNum = curBlock*this.getPerBlock();
		
		//curBlock일 때 마지막 block일 때
		if(totalBlock == curBlock) {
			this.lastNum = this.totalPage;
		}
		
	}

// Setter, Getter
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
	
	public Long getPerBlock() {
		this.perBlock = 5L;
		return perBlock;
	}

	public void setPerBlock(Long perBlock) {
		this.perBlock = perBlock;
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
