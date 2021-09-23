package com.cw.s4;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.cw.s4.board.CommentsDTO;
import com.cw.s4.board.notice.NoticeDAO;
import com.cw.s4.board.notice.NoticeDTO;

public class CommentDAOTest extends MyJunitTest {

	@Autowired
	NoticeDAO noticeDAO;
	
	@Test
	public void test() throws Exception {
		for(int i=0;i<100;i++) {
			CommentsDTO commentsDTO = new CommentsDTO();
			commentsDTO.setNum(503L);
			commentsDTO.setWriter("admin");
			commentsDTO.setContents("comments"+i);
			commentsDTO.setBoard("N");
			noticeDAO.setComment(commentsDTO);
			if(i%10 ==0) {				
				Thread.sleep(1000);
			}
		}
		System.out.println("FINISH");
	}

}
