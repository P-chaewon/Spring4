package com.cw.s4.member;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.cw.s4.MyJunitTest;

public class MemberDAOTest extends MyJunitTest{

	@Autowired
	private MemberDAO memberDAO;
	

	@Test
	public void getIdCheckTest() throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("abcd1111");
		memberDTO = memberDAO.getIdCheck(memberDTO);
		assertNotNull(memberDTO);
	}

}
