package team.shop.controller;

import team.shop.controller.action.Action;
import team.shop.controller.action.CategoryDetailAction;
import team.shop.controller.action.ProductDetailAction;
import team.shop.controller.action.ShopListAction;

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
		
		if(command.equals("category_list")) {
			action = new CategoryDetailAction();
		}else if(command.equals("product_detail")){
			action = new ProductDetailAction();
		}
		//command에 해당하는 Action을 Servlet으로 리턴해줌
		return action;
		
	}
}
