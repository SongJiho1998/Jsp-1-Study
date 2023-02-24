package com.kh.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PizzaServlet
 */
@WebServlet("/PizzaServlet")
public class PizzaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PizzaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // 1) 전달값중에 한글이 있을경우 인코딩처리
	    request.setCharacterEncoding("UTF-8");
//	    System.out.println(11);
	    
	    // 2) 요청시 전달값을 뽑기 및 데이터 가공처리 => 변수 및 객체 기록.
	    String piza = request.getParameter("piza");
	    String[] topping = request.getParameterValues("topping");
	    String[] side = request.getParameterValues("side");
	    
	    // 3) 요청 처리
	    int price = 0;
	    
	    switch(piza) {
	        case "치즈피자" : price += 5000; break;
	        case "콤피네이션피자" : price += 6000; break;
	        case "포테이토피자" : 
	        case "고구마피자" : price += 7000; break;
	        case "불고기피자" : price += 8000; break;
	    }
	    
	    if(topping != null) {
	        for(int i = 0; i < topping.length; i++) {
	            switch(topping[i]) {
	            case "고구마무스" : price += 1000; break;
	            case "콘크림무스" : price += 1500; break;
	            case "파인애플토핑" :
	            case "치즈토핑" :
	            case "치즈크러스트" : price += 2000; break;
	            case "치즈바이트" : price += 3000; break;
	            }
	        }
	    }
	    
	    if(side != null) {
	        for(int i = 0; i < side.length; i++) {
	            switch(side[i]) {
	            case "오븐구이통닭" : price += 9000; break;
	            case "치킨스틱&윙" : price += 4900; break;
	            case "치즈오븐스파게티" : price += 4000; break;
	            case "새우링&웨지감자" : price += 3500; break;
	            case "갈릭포테이토" : price += 3000; break;
	            case "콜라" :
	            case "사이다" : price += 1500; break;
	            case "갈릭소스" : price += 500; break;
	            case "피클" : price += 300; break;
	            case "핫소스" :
	            case "파마산 치즈가루" : price += 100; break;
	            }
	        }
	    }
	    
	    // 4) 요청처리후 사용자가 보게될 응답페이지를 만들기 위해 jsp 위임.
	    // 응답페이지에 필요한 데이터를 담아주기 > request의 attribute영역
        request.setAttribute("piza", piza);
        request.setAttribute("topping", topping);
        request.setAttribute("side", side);
        request.setAttribute("price", price);
        
        // 응답할 뷰(jsp) 선택
        // 위임시 필요한객체 : RequestDispatcher
        // 1) 응답하고자 하는 뷰(jsp)를 선택하면서 생성.
        RequestDispatcher view = request.getRequestDispatcher("views/PizzaPayment.jsp");
        
        // 2) 포워딩
        // 선택된 뷰가 사용자에게 보여지도록 포워딩.
        view.forward(request, response);
	    
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
