package team.shop.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import team.shop.DAO.productDAO;
import team.shop.DTO.productVO;

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/product/productDetail.jsp";
		
		String pNum = request.getParameter("pNum");
		
		productDAO pDao = productDAO.getInstance();
		
		productVO pVo = pDao.selectOneProductBypNum(pNum);
		
		//bDao의 selectOneBoardByNum() 메서드에서 리턴받은 bVo를 request에 세팅하는 것
		//boardDetailView.jsp에서 값 가져올 때 ${oneboard.name}처럼 사용할 것!
		request.setAttribute("product", pVo); 
		
		//set 완료된 request객체를 해당 url로 뿌려주기 위해 forward() 메서드 이용
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
