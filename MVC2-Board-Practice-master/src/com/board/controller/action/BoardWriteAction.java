package com.board.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.DAO.BoardDAO;
import com.board.DTO.BoardVO;

public class BoardWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//boardWrite.jsp로부터 받아온 정보들은 request객체에 저장되어 있음
		//이 정보를 bVo setter()를 이용해 저장해 주는 절차
		//request에서 값을 가져올 때 request.getParameter(String); 이용
		BoardVO bVo = new BoardVO();
		
		bVo.setName(request.getParameter("name"));
		bVo.setPwd(request.getParameter("pwd"));
		bVo.setEmail(request.getParameter("email"));
		bVo.setTitle(request.getParameter("title"));
		bVo.setContent(request.getParameter("content"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.insertBoard(bVo);
		
		//DB저장 후 새롭게 갱신된 목록(list)를 직접 호출하는 방법
		new BoardListAction().execute(request, response);
		//SendRedirect 이용법
		//response.sendRedirect("BoardServlet?command=board_list");
	}

}
