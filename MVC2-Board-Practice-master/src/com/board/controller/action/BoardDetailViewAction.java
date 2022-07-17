package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.DAO.BoardDAO;
import com.board.DTO.BoardVO;

import sun.rmi.server.Dispatcher;

public class BoardDetailViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/board/boardDetailView.jsp";
		
		String num = request.getParameter("num");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		//해당 글번호의 조회수 1 증가시키는 updateReadCount(); 실행
		bDao.updateReadCount(num);
		
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		
		//bDao의 selectOneBoardByNum() 메서드에서 리턴받은 bVo를 request에 세팅하는 것
		//boardDetailView.jsp에서 값 가져올 때 ${oneboard.name}처럼 사용할 것!
		request.setAttribute("oneboard", bVo); 
		
		//set 완료된 request객체를 해당 url로 뿌려주기 위해 forward() 메서드 이용
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
