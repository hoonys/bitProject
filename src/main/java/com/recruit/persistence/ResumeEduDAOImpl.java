package com.recruit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.recruit.domain.ResumeEduVO;

@Repository
public class ResumeEduDAOImpl implements ResumeEduDAO {
	@Inject
	private SqlSession session;

	private static String namespace = "com.recruit.mapper.ResumeMapper";

	@Override
	public void createResumeEdu(ResumeEduVO revl) throws Exception {
		System.out.println("라라라라라2DAO"+revl.toString());
		session.insert(namespace + ".createResumeEdu", revl);
	}

	@Override
	public ResumeEduVO readResumeEdu(Integer bno) throws Exception {
		return session.selectOne(namespace + ".readResumeEdu", bno);
	}

	@Override
	public void updateResumeEdu(ResumeEduVO vo) throws Exception {
		session.update(namespace + ".updateResumeEdu", vo);
	}

	@Override
	public void deleteResumeEdu(Integer bno) throws Exception {
		session.delete(namespace + ".deleteResumeEdu", bno);
	}
	
	// r.code 03/13 추가
	@Override
	public List<ResumeEduVO> readResumeEduList(Integer bno) throws Exception {
		return session.selectList(namespace + ".readResumeEduList", bno);
	}

	@Override
	public void deleteResumeEduList(Integer resumenum) throws Exception {
		session.delete(namespace + ".deleteResumeEduList", resumenum);
	}

}
