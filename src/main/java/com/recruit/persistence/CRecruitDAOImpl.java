package com.recruit.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.recruit.domain.CRecruitVO;
import com.recruit.domain.PersonalCriteriaVO;

@Repository
public class CRecruitDAOImpl implements CRecruitDAO{

	@Inject
	private SqlSession session;

	private static String namespace = "com.recruit.mapper.CRecruitMapper";

	// 스크랩한 채용공고 목록 
	@Override
	public List<CRecruitVO> selectCRList(PersonalCriteriaVO cri, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("viewcnt_order")){
			System.out.println("viewcnt_order cri"+cri);
			System.out.println("viewcnt_order cri getPageStart"+cri.getPageStart());
			return session.selectList(namespace + ".selectCRList_veiwcnt_order", cri);
		}else if(order_value!=null&&order_value.equals("applicant_order")){
			return session.selectList(namespace + ".selectCRList_applicant_order", cri);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			return session.selectList(namespace + ".selectCRList_closingdate_order", cri);
		}else{
			System.out.println("CRecruitDAOImpl selectCRList order_value값 없을 때");
			return session.selectList(namespace + ".selectCRList_closingdate_order", cri);
		}
	};

	// 스크랩한 채용공고 목록 
	@Override
	public List<CRecruitVO> selectCRList_ongoing(String id, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("viewcnt_order")){
			return session.selectList(namespace + ".selectCRList_ongoing_veiwcnt_order", id);
		}else if(order_value!=null&&order_value.equals("applicant_order")){
			return session.selectList(namespace + ".selectCRList_ongoing_applicant_order", id);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			return session.selectList(namespace + ".selectCRList_ongoing_closingdate_order", id);
		}else{
			System.out.println("CRecruitDAOImpl selectCRList_ongoing 뭔가 이상함");
			return session.selectList(namespace + ".selectCRList_ongoing_closingdate_order", id);
		}
	};

	// 스크랩한 채용공고 목록 
	@Override
	public List<CRecruitVO> selectCRList_closed(String id, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("viewcnt_order")){
			return session.selectList(namespace + ".selectCRList_closed_veiwcnt_order", id);
		}else if(order_value!=null&&order_value.equals("applicant_order")){
			return session.selectList(namespace + ".selectCRList_closed_applicant_order", id);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			return session.selectList(namespace + ".selectCRList_closed_closingdate_order", id);
		}else{
			System.out.println("CRecruitDAOImpl selectAPList_closed 뭔가 이상함");
			return session.selectList(namespace + ".selectCRList_closed_closingdate_order", id);
		}
	};

	//지원한 채용공고 목록
	@Override
	public List<CRecruitVO> selectAPList(String id, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("applicant_order")){
			 return session.selectList(namespace + ".selectAPList_applicant_order", id);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			 return session.selectList(namespace + ".selectAPList_closingdate_order", id);
		}else{
			System.out.println("CRecruitDAOImpl selectAPList 뭔가 이상함");
			return session.selectList(namespace + ".selectAPList_closingdate_order", id);
		}
	};

	//지원한 채용공고 목록
	@Override
	public List<CRecruitVO> selectAPList_ongoing(String id, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("applicant_order")){
			 return session.selectList(namespace + ".selectAPList_ongoing_applicant_order", id);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			 return session.selectList(namespace + ".selectAPList_ongoing_closingdate_order", id);
		}else{
			System.out.println("CRecruitDAOImpl selectAPList_ongoing 뭔가 이상함");
			return session.selectList(namespace + ".selectAPList_ongoing_closingdate_order", id);
		}
	};
	
	//지원한 채용공고 목록
	@Override
	public List<CRecruitVO> selectAPList_closed(String id, String order_value)throws Exception{
		
		if(order_value!=null&&order_value.equals("applicant_order")){
			 return session.selectList(namespace + ".selectAPList_closed_applicant_order", id);
		}else if(order_value!=null&&order_value.equals("closingdate_order")){
			 return session.selectList(namespace + ".selectAPList_closed_closingdate_order", id);
		}else{
			System.out.println("CRecruitDAOImpl selectAPList_closed 뭔가 이상함");
			return session.selectList(namespace + ".selectAPList_closed_closingdate_order", id);
		}
	};
	
	//스크랩한 채용공고 목록에서 선택한 채용공고 하나 확인
	@Override
	public CRecruitVO selectCROne(int bno)throws Exception{
		return session.selectOne(namespace + ".selectCROne", bno);
		//session 은 mybatis //selectOne은 DAO
	};
}
