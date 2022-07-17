package com.board.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.DAO.BoardDAO;
import com.board.DTO.BoardVO;

public class BoardCheckPwdAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = null;
		
		String num = request.getParameter("num");
		String pwd = request.getParameter("pwd");
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		//해당 글번호의 게시글 정보를 가져와 pwd를 비교하여 알맞은 view로 보낸다
		BoardVO bVo = bDao.selectOneBoardByNum(num);
		System.out.println("DB상 pwd = "+bVo.getPwd());
		System.out.println("Client가 적은 pwd = "+pwd);
		
		//bVo.getPwd() : DB상 비번, pwd : 클라이언트가 입력한 비번 비교
		if(bVo.getPwd().equals(pwd)) {//일치
			url = "/board/boardCheckSuccess.jsp";
		}else{//불일치
			url = "/board/boardCheckPwd.jsp";//다시 돌아가라~
		request.setAttribute("message", "비밀번호가 틀렸습니다.");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
