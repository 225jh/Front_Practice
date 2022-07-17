package com.board.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.DAO.BoardDAO;
import com.board.DTO.BoardVO;

public class BoardDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.deleteBoard(num);
		
		//위 Delete작업 실행 후 새롭게 갱신된 List를 보여주어야 하므로
		new BoardListAction().execute(request, response);
		//sendRedirect 방식
		//response.sendRedirect("BoardServlet?command=board_list");
		
	}

}
