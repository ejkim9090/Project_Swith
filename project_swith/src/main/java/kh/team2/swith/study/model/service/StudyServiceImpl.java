package kh.team2.swith.study.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.team2.swith.study.model.dao.StudyDao;
import kh.team2.swith.study.model.vo.Study;
import kh.team2.swith.study.model.vo.StudyComment;

@Service
public class StudyServiceImpl implements StudyService{
	@Autowired
	private StudyDao dao;
	
	//Study
	@Override
	public int insertStudy(Study vo) throws Exception{
		return dao.insertStudy(vo);
		
	}

	@Override
	public List<Study> selectListStudy() throws Exception {
		
		return dao.selectListStudy();
	}

	@Override
	public Study selectStudy(String study_no) throws Exception {
		return dao.selectStudy(study_no);
	}
	
	//TODO
	@Override
	public List<Study> findAllByOrderByCreatedAtDesc() throws Exception {
        return dao.findAllByOrderByCreatedAtDesc();
    }
	@Override	
    public List<Study> findAllByOrderByViewCountDesc() throws Exception {
        return dao.findAllByOrderByViewCountDesc();
    }
	@Override
    public List<Study> findAllByOrderByLikeCountDesc() throws Exception {
        return dao.findAllByOrderByLikeCountDesc();
    }
	
	//StudyComment
	@Override
	public int insertStudyComment(StudyComment vo) throws Exception {
		return dao.insertStudyComment(vo);
	}

	@Override
	public int updateStudyComment(StudyComment vo) throws Exception {
		return dao.updateStudyComment(vo);
	}

	@Override
	public int deleteStudyComment(int study_no, String member_id, int study_comment_no) throws Exception {
		return dao.deleteStudyComment(study_no, member_id, study_comment_no);
	}

	@Override
	public StudyComment selectStudyComment(int study_no, String member_id, int study_comment_no) throws Exception {
		return dao.selectStudyComment(study_no, member_id, study_comment_no);
	}

	@Override
	public List<StudyComment> selectListStudyComment(int study_no) throws Exception {
		return dao.selectListStudyComment(study_no);
	}

	@Override
	public List<StudyComment> selectListAllStudyComment() throws Exception {
		return dao.selectListAllStudyComment();
	}
}
