package com.KoreaIT.java.jsp_AM;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;




@WebServlet("/printDan")
public class PrintDanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		response.getWriter().append("==8단==<br>");
		
		int dan = 8;
		for (int i = 1; i <= 9; i++)
		response.getWriter().append(String.format("%d * %d = %d<br>", dan, i, dan*i));
		
//		\n은 개행이 먹히지 않는다. 줄바꿈을 하려면 html의 <br>태그를 이용해야 줄바꿈이 된다 => java와 HTML의 융합!
		
	}
}
