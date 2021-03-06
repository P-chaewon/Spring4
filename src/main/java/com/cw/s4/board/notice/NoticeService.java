package com.cw.s4.board.notice;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cw.s4.board.BoardDTO;
import com.cw.s4.board.BoardFilesDTO;
import com.cw.s4.board.BoardService;
import com.cw.s4.board.CommentsDTO;
import com.cw.s4.util.FileManager;
import com.cw.s4.util.Pager;

@Service
public class NoticeService implements BoardService {

	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		Long totalCount = noticeDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		return noticeDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {				
		noticeDAO.setHitsUpdate(boardDTO);
		return noticeDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		//1. 파일 저장 폴더 : /resources/upload/notice
		String realPath = this.servletContext.getRealPath("/resources/upload/notice/");
		System.out.println("RealPath : "+realPath);
		File file = new File(realPath);
		System.out.println("Before Num : "+boardDTO.getNum());
		int result = noticeDAO.setInsert(boardDTO);
		System.out.println("After Num : "+boardDTO.getNum());
		
		for(MultipartFile multipartFile : files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			System.out.println(fileName);
			BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
			boardFilesDTO.setFileName(fileName);
			boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
			boardFilesDTO.setNum(boardDTO.getNum());
			
			result = noticeDAO.setFile(boardFilesDTO);
		}
		
		
		
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		String realPath = servletContext.getRealPath("/resources/upload/notice/");
		//삭제할 파일
		List<BoardFilesDTO> ar = noticeDAO.getFiles(boardDTO);
		for(BoardFilesDTO boardFilesDTO : ar) {
			File file = new File(realPath, boardFilesDTO.getFileName());
			file.delete();
		}
		
		
		return noticeDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO, MultipartFile [] files) throws Exception {
		// TODO Auto-generated method stub
		String realPath = servletContext.getRealPath("resources/upload/notice/");
		int result = noticeDAO.setUpdate(boardDTO);
		File file = new File(realPath);
		
		for(MultipartFile multipartFile : files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
			boardFilesDTO.setFileName(fileName);
			boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
			boardFilesDTO.setNum(boardDTO.getNum());
			
			result = noticeDAO.setFile(boardFilesDTO);
			
		}
		return result;
	}
	
	public List<BoardFilesDTO> getFiles(BoardDTO boardDTO) throws Exception {
		return noticeDAO.getFiles(boardDTO);
	}
	
	public int setComment (CommentsDTO commentsDTO) throws Exception {
		return noticeDAO.setComment(commentsDTO);
	}
	
	public List<CommentsDTO> getCommentList(CommentsDTO commentsDTO, Pager pager) throws Exception {
		pager.setPerPage(5L);
		Long totalCount = noticeDAO.getCommentCount(commentsDTO);
		pager.makeNum(totalCount);
		pager.makeRow();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("comments", commentsDTO);
		map.put("pager", pager);

				
		return noticeDAO.getCommentList(map);
	}
	
	public int setCommentDelete(CommentsDTO commentsDTO) throws Exception {
		return noticeDAO.setCommentDelete(commentsDTO);
	}
	
	public int setCommentUpdate(CommentsDTO commentsDTO) throws Exception {
		return noticeDAO.setCommentUpdate(commentsDTO);
	}

	public int setFileDelete(BoardFilesDTO boardFilesDTO) throws Exception {
		//폴더에서 파일 삭제
		String realPath = servletContext.getRealPath("/resources/upload/notice/");
		File file = new File(realPath, boardFilesDTO.getFileName());
		fileManager.fileDelete(file);
		return noticeDAO.setFileDelete(boardFilesDTO);
	}
}
