package kh.team2.swith.reserve.model.service;

import java.util.List;

import kh.team2.swith.reserve.model.vo.CancelReserveInfo;
import kh.team2.swith.reserve.model.vo.ReserveChart;
import kh.team2.swith.reserve.model.vo.ReserveInfo;

public interface ReserveService {
	public int insertReserve(ReserveInfo vo);
	public int updateReserve(ReserveInfo vo);
	public int deleteReserve(String member_id, String reserve_no);
	public ReserveInfo selectReserve(String member_id, String reserve_no);
	public List<ReserveInfo> selectListReserve();
	public List<ReserveInfo> selectListRoomReserve(int room_no);
	public List<ReserveInfo> selectListMyReserve(String member_id);
	public int selectReserveCount();
	public int insertCancelReserve(ReserveInfo vo);
	public int deleteCancelReserve(String member_id, String reserve_no);
	public CancelReserveInfo selectCancelReserve(String member_id, String reserve_no);
	public List<CancelReserveInfo> selectListCancelReserve();
	
	//adminpage - homin
	public List<ReserveChart> selectAreaMonthPrice(String sido_name, int area_code) throws Exception;
	public List<ReserveChart> selectAreaMonthCnt(String sido_name, int area_code) throws Exception;
}
