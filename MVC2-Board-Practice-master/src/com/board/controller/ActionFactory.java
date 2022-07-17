package com.board.controller;

import com.board.controller.action.Action;
import com.board.controller.action.BoardCheckPwdAction;
import com.board.controller.action.BoardCheckPwdFormAction;
import com.board.controller.action.BoardDeleteAction;
import com.board.controller.action.BoardDetailViewAction;
import com.board.controller.action.BoardListAction;
import com.board.controller.action.BoardUpdateAction;
import com.board.controller.action.BoardUpdateFormAction;
import com.board.controller.action.BoardWriteAction;
import com.board.controller.action.BoardWriteFormAction;

public class ActionFactory {
	//싱글톤 형태로 유일하게 한 개의 객체만 생성하고 getInstance()로 호출해 사용함
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	//Servlet에서 받아온 command에 맞는 액션객체를 찾아 Servlet으로 전달
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : "+command);
		
		if(command.equals("board_list")) {
			action = new BoardListAction();
		}else if(command.equals("board_write")) {
			action = new BoardWriteAction();
		}else if(command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		}else if(command.equals("board_detail_view")) {
			action = new BoardDetailViewAction();
		}else if(command.equals("board_update")) {
			action = new BoardUpdateAction();
		}else if(command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();	
		}else if(command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}else if(command.equals("board_check_pwd_form")) {
			action = new BoardCheckPwdFormAction();
		}else if(command.equals("board_check_pwd")) {
			action = new BoardCheckPwdAction();
		}
		//command에 해당하는 Action을 Servlet으로 리턴해줌
		return action;
		
	}
}
