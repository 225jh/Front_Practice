package team.shop.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.shop.controller.action.Action;


@WebServlet("/ShopServlet")
public class ShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		//console에서 요청받음 확인 목적
		System.out.println("ShopServlet에서 요청받음을 확인 : "+command);
		
		//ActionFactory객체 호출
		ActionFactory af = ActionFactory.getInstance();
		//ActionFactory의 getAction()메소드가 리턴하는 command에 해당하는
		//action객체(AF)를 action(Servlet)에 저장
		Action action = af.getAction(command);
		
		//action이 null이 아니면 execute()메소드 호출 : 해당 Action을 실행하라!
		if(action != null) {
			action.execute(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post방식으로 호출 시 한글깨짐 방지
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
