package com.jjcompany.rentcarProject.dao;

import java.util.List;

import com.jjcompany.rentcarProject.dto.CarDto;
import com.jjcompany.rentcarProject.dto.FreeBoardDto;
import com.jjcompany.rentcarProject.dto.FreereplyDto;
import com.jjcompany.rentcarProject.dto.MemberDto;
import com.jjcompany.rentcarProject.dto.UserBoardDto;
import com.jjcompany.rentcarProject.dto.UserreplyDto;

public interface IDao {
	
	//회원관리
	public int joinDao(String rid, String rpw, String rname, String rmobile, String remail); 
	public int checkIdDao(String rid);
	public int loginOkDao(String rid, String rpw);
	public MemberDto showInfoDao(String rid);
	public int modifyOkDao(String rid, String rpw, String rname, String rmobile, String remail);

	
	//문의게시판관리
	//게시글
	public int boardWriteDao(String rid, String rbtitle, String rbcontent);
	public List<UserBoardDto> userBoardListDao(int amount, int pageNum);
	public UserBoardDto userBoardViewDao(String rbnum);
	public int userBoardDelete(String rbnum);
	public int totalListcount();
	public List<UserBoardDto> userListSearchTitleDao(int amount, int pageNum, String rbtitle);
	public List<UserBoardDto> userListSearchIdDao(int amount, int pageNum, String rid);
	public List<UserBoardDto> userListSearchContentDao(int amount, int pageNum, String rbcontent);
	public int userListSearchTitleCountDao(String rbtitle);
	public int userListSearchIdCountDao(String rid);
	public int userListSearchContentCountDao(String rbcontent);
	public int userBoardModifyDao(String rbnum, String rbtitle, String rbcontent);
	public void userBoardUpHit(String rbnum);
	
	//댓글
	public int replyWriteDao(String rbnum, String rid, String rrcontent);
	public List<UserreplyDto> userReplyListDao(String rbnum);
	public int replyCountUpDao(String rbnum);
	public int replydeleterbnumDao(String rbnum);
	public int replydeleterrnumDao(String rrnum);
	public int replyCountDownDao(String rbnum);
	public UserreplyDto replyViewDao(String rrnum);
	public int replyModifyDao(String rrnum, String rrcontent);
	
	//자유게시판관리
	//게시글
	public int freeBoardWriteDao(String rid, String rfbtitle, String rfbcontent);
	public List<FreeBoardDto> freeBoardListDao(int amount, int pageNum);
	public FreeBoardDto freeBoardViewDao(String rfbnum);
	public int freeBoardDelete(String rfbnum);
	public int freeTotalListcount();
	public List<FreeBoardDto> freeListSearchTitleDao(int amount, int pageNum, String rfbtitle);
	public List<FreeBoardDto> freeListSearchIdDao(int amount, int pageNum, String rid);
	public List<FreeBoardDto> freeListSearchContentDao(int amount, int pageNum, String rfbcontent);
	public int freeListSearchTitleCountDao(String rfbtitle);
	public int freeListSearchIdCountDao(String rid);
	public int freeListSearchContentCountDao(String rfbcontent);
	public int freeBoardModifyDao(String rfbnum, String rfbtitle, String rfbcontent);
	public void freeBoardUpHit(String rfbnum);
	public void noticeDao(String rid);
		
	//댓글
	public int freeReplyWriteDao(String rfbnum, String rid, String rfrcontent);
	public List<FreereplyDto> freeReplyListDao(String rfbnum);
	public int freeReplyCountUpDao(String rfbnum);
	public int freeReplydeleterbnumDao(String rfbnum);
	public int freeReplydeleterrnumDao(String rfrnum);
	public int freeReplyCountDownDao(String rfbnum);
	public FreereplyDto freeReplyViewDao(String rfrnum);
	public int freeReplyModifyDao(String rfrnum, String rfrcontent);
	
	//예약관리
	public List<CarDto> carListTotalDao();
	public CarDto carinfoDao(String cindex);
	
}
