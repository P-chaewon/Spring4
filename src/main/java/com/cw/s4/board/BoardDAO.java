package com.cw.s4.board;

import java.util.List;

import com.cw.s4.util.Pager;

public interface BoardDAO {

	//list
	public abstract List<BoardDTO> getList(Pager pager) throws Exception;
	
	//상세
	public abstract BoardDTO getSelect(BoardDTO boardDTO) throws Exception;
	
	//추가
	public int setInsert(BoardDTO boardDTO) throws Exception;
	
	//삭제
	public int setDelete(BoardDTO boardDTO) throws Exception;
	
	//수정
	public int setUpdate(BoardDTO boardDTO) throws Exception;
	
	//전체 갯수
	public Long getCount(Pager pager) throws Exception;
}
