package com.fc.service.board;

import java.util.List;
import java.util.Map;

import com.fc.dto.board.BoardDto;
import com.fc.dto.board.ReplyDto;
import com.fc.dto.facility.SearchDto;

public interface BoardService {

	public int boardInsert(BoardDto boardDto);


	List<BoardDto> getBoardListbyBoardNumber(BoardDto boardDto);

	List<BoardDto> getBoardList();

	List<BoardDto> getBoardListByViewCnt();

	
	List<BoardDto> findBoardListBySearchKeywordMap(Map<String, String> map);

	List<BoardDto> findBoardListBySearchKeywordMap2(Map<String, String> map);
 
	List<BoardDto> findBoardListBySearchDto(SearchDto searchDto);

	void viewCount(int postno );

	public BoardDto getdetail(int postno);

	public void boardUpdate(BoardDto boardDto);

	public void boardDelte(int postno);
	
	public int controlBoardInfo(Map<String, String> map);
	
	public int getTotalPage();
	
	public int getSearchedTotalPage();

}
