package com.recruit.service;

import java.util.Date;
import java.util.List;

import com.recruit.domain.UserVO;
import com.recruit.domain.MessageVO;
import com.recruit.dto.LoginDTO;

public interface UserService {

	//
	public UserVO login(LoginDTO dto) throws Exception;

	public UserVO idoverlap(String id) throws Exception;
	
	public void pregist(UserVO board) throws Exception;

	public void cregist(UserVO board) throws Exception;
	
	//로그인 정보를 유지
	public void keepLogin(String id, String sessionId, Date next)throws Exception;
	  
	//과거에 접속한 사용자인지 확인
	public UserVO checkLoginBefore(String value);
	
	public void userAuth(String email) throws Exception;
	
	public UserVO pread(LoginDTO dto) throws Exception;
	
	public UserVO cread(LoginDTO dto) throws Exception;
	
	public UserVO emailoverlap(String email) throws Exception;
	
	public void ppwchk(LoginDTO dto) throws Exception;
	
	public void cpwchk(LoginDTO dto) throws Exception;
	
	public UserVO userread(String id) throws Exception;
	
	public UserVO getppw(LoginDTO dto) throws Exception;
	
	public UserVO getcpw(LoginDTO dto) throws Exception;
	
	public void pRead(LoginDTO dto) throws Exception;
	
	public void cRead(LoginDTO dto) throws Exception;
	
	public int countURmessage(String id)throws Exception;//소연
	
	public List<MessageVO> readFivemessage(String id) throws Exception;//소연
	
	public List<MessageVO> readAllmessage(String id) throws Exception;//소연

	public List<MessageVO> Readmessage_paging(MessageVO msvo)throws Exception;//페이징 처리
	
	public String Minmessagebno(MessageVO msvo)throws Exception;
	
	public void CreadAPRmessage(MessageVO msvo)throws Exception;//소연 이력서 열람했다는 알림
	
	public void PAppliedmessage(MessageVO msvo)throws Exception;//이력서 지원했다는 알림
	
	public void Readedmessage(MessageVO msvo)throws Exception;//메시지 확인 서비스
	
	public void AreadQNAmessage(MessageVO msvo)throws Exception;//지훈 Q&A 등록했다는 알림
	
	public void readQNAReplymessage(MessageVO msvo)throws Exception;//지훈 Q&A 댓글 등록했다는 알림
	
	public void modifyAdminMessage(MessageVO msvo) throws Exception; //지훈  admin에서 개인정보 수정알림
	
	public void modifyResumeAdminMessage(MessageVO msvo) throws Exception; //지훈  admin에서 이력서 수정
	
	public void modifyRecruitAdminMessage(MessageVO msvo) throws Exception; //지훈  admin에서 채용공고 수정
}
