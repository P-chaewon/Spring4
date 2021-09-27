package com.cw.s4.board;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cw.s4.util.Pager;

public interface BoardService {
	
	//list
	public abstract List<BoardDTO> getList(Pager pager) throws Exception;
	
	//상세
	public abstract BoardDTO getSelect(BoardDTO boardDTO) throws Exception;
	
	//추가
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files) throws Exception;
	
	//삭제
	public int setDelete(BoardDTO boardDTO) throws Exception;
	
	//수정
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files) throws Exception;
	
	

}
