package com.recruit.persistence;

import java.util.HashMap;
import java.util.List;

import com.recruit.domain.CInfoVO;
import com.recruit.domain.CInterestPersonVO;
import com.recruit.domain.CPersonInfoVO;
import com.recruit.domain.CompanyCriteria;
import com.recruit.domain.CompanySearchCriteria;
import com.recruit.domain.JobGroupVO;
import com.recruit.domain.RecruitQnAVO;
import com.recruit.domain.RecruitVO;
import com.recruit.domain.RegionVO;
import com.recruit.domain.ResumeVO;


public interface CompanyAjaxDAO {
	

	public List<JobGroupVO> list(int id2)throws Exception;

	public List<JobGroupVO> jobgroupList() throws Exception;
	
	public List<JobGroupVO> subJobgroupList() throws Exception;
	
	public int jobGroupCount() throws Exception;
	
	public int regionCount() throws Exception;
	
	public int appListCount(int bno) throws Exception;
	
	public List<RegionVO> subRegionList() throws Exception;

	public List<RegionVO> SubRegion(String id2) throws Exception;
	
	public List<RecruitVO> RecruitList(String id, int page) throws Exception;
	
	public List<RecruitVO> RecruitCriteria(CompanySearchCriteria cri, String id)throws Exception;
	
	public List<RecruitVO> IngRecruitList(CompanySearchCriteria cri, String id) throws Exception;
	
	public List<RecruitVO> EndRecruitList(CompanySearchCriteria cri, String id) throws Exception;
	
	public List<CPersonInfoVO> PersonRecomList(int bno) throws Exception;
	
	public void QnAQuestion(RecruitQnAVO QnA)throws Exception;
	
	public void QnAAnswer(RecruitQnAVO QnA)throws Exception;
	
	public List<RecruitQnAVO> QnAList(int recruitNum, CompanyCriteria cri) throws Exception;
	
	public int QnAPageNum(int recruitNum) throws Exception;
	
	public void FavorPersonAdd(int bno, String id) throws Exception;
	
	public void ChangeState(int bno, int state)throws Exception;
	
	public void FavorPersonDelete(int bno, String id) throws Exception;
	
	public int FavorListCount(String id) throws Exception;
	
	public void endRecruit(int bno, String id) throws Exception;
	
	public void RecruitReRegister(String id, int bno, int day)throws Exception; // 채용 공고 재등록
	 
	public int recruitCriteriaCount(CompanySearchCriteria cri, String id) throws Exception;
	
	public int ajaxIngRecruitListCount(CompanySearchCriteria cri, String id) throws Exception;
	
	public int ajaxEndRecruitListCount(CompanySearchCriteria cri, String id) throws Exception;
	
}