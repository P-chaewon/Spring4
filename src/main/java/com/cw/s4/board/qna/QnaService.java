package com.cw.s4.board.qna;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cw.s4.board.BoardDTO;
import com.cw.s4.board.BoardFilesDTO;
import com.cw.s4.board.BoardService;
import com.cw.s4.util.FileManager;
import com.cw.s4.util.Pager;

@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	@Override
	public List<BoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		Long totalCount = qnaDAO.getCount(pager);
		pager.makeNum(totalCount);
		pager.makeRow();
		return qnaDAO.getList(pager);
	}

	@Override
	public BoardDTO getSelect(BoardDTO boardDTO) throws Exception {
		qnaDAO.setHitsUpdate(boardDTO);
		return qnaDAO.getSelect(boardDTO);
	}

	@Override
	public int setInsert(BoardDTO boardDTO, MultipartFile[] files) throws Exception {
		//1. 파일 저장 폴더
		String realPath = this.servletContext.getRealPath("/resources/upload/qna/");
		System.out.println(realPath);
		File file = new File(realPath);
		int result = qnaDAO.setInsert(boardDTO);
		for(MultipartFile multipartFile : files) {
			String fileName = fileManager.fileSave(multipartFile, file);
			BoardFilesDTO boardFilesDTO = new BoardFilesDTO();
			boardFilesDTO.setFileName(fileName);
			boardFilesDTO.setOriName(multipartFile.getOriginalFilename());
			boardFilesDTO.setNum(boardDTO.getNum());
			
			result = qnaDAO.setFile(boardFilesDTO);
			
		}
		// TODO Auto-generated method stub
		return result;
	}

	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		String realPath = servletContext.getRealPath("/resources/upload/qna");
		List<BoardFilesDTO> ar = qnaDAO.getFiles(boardDTO);
		for(BoardFilesDTO boardFilesDTO : ar) {
			File file = new File(realPath, boardFilesDTO.getFileName());
			file.delete();
		}
		
		// TODO Auto-generated method stub
		return qnaDAO.setDelete(boardDTO);
	}

	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int setReply(QnaDTO qnaDTO) throws Exception {
		//1. 부모 정보 조회
		QnaDTO parent = (QnaDTO)qnaDAO.getSelect(qnaDTO);
		qnaDTO.setRef(parent.getRef());
		qnaDTO.setStep(parent.getStep()+1);
		qnaDTO.setDepth(parent.getDepth()+1);
		
		//2. update
		int result = qnaDAO.setReplyUpdate(parent);
		
		//3. insert
		result = qnaDAO.setReply(qnaDTO);
		return result;
	}
	
	public List<BoardFilesDTO> getFiles(BoardDTO boardDTO) throws Exception {
		return qnaDAO.getFiles(boardDTO);
	}

}
