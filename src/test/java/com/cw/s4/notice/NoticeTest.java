package com.cw.s4.notice;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.cw.s4.MyJunitTest;

public class NoticeTest extends MyJunitTest {

	@Autowired
	private NoticeDAO noticeDAO;
	
	/* @Test */
	public void listTest() {
		List<NoticeDTO> ar= noticeDAO.getList();
		assertNotEquals(0, ar.size());
	}
	
	@Test
	public void selectTest() {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNum(1);
		assertNotNull(noticeDAO.getSelect(noticeDTO));
	}

}
