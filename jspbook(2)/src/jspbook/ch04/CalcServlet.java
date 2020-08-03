package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "Calc1 서블릿", urlPatterns = { "/CalcServlet" })
public class CalcServlet extends HttpServlet {
	private static final long serialVervsionUID = 1L;
	
	// GET 요청을 처리하기 위한 메서드
	public void doGet(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		
		// doPost()로 포워딩
		doPost(req, res);
	}
	
	//POST 요청을 처리하기 위한 메서드
	// doGET()에서도 호출했으므로 모든 요청은 doPost()에서 처리되는 구조다.
	public void doPost(HttpServletRequest req, HttpServletResponse res)
		throws ServletException, IOException {
		
		//변수 선언
		int num1, num2;
		int result;
		String op;
		
		//클라이언트 응답시 전달될 컨텐트에 대한 mime type과 캐릭터셋 지정
		res.setContentType("test/html; charset=UTF-8");
		
		//클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out = res.getWriter();
		
		//HTML 폼을 통해 전달된 num1, num2 매개변수 값을 변수에 할당한다.
		/* 이때 getParameter() 메서드는 문자열을 반환하므로 숫자형 데이터의 경우
		 * Integer.parseInt()를 통해 int로 변환한다.  */
		num1 = Integer.parseInt(req.getParameter("num1"));
		num2 = Integer.parseInt(req.getParameter("num2"));
		op = req.getParameter("operator");
		// calc()메서드 호출로 결과를 받아 온다.
		result = calc(num1, num2, op);
		
		//출력 스트림을 통해 화면을 구성한다.
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<BODY><center>");
		out.println("<H2>계산결과</H2>"); 
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+"= "+result);
		out.println("</BODY></HTML>");
	}
	
	//실제 계산 기능을 수행하는 메서드
	public int calc(int num1, int num2, String op) {
		int result = 0;
		
		if(op.equals("+")) {
			result = num1 + num2;
		}
		else if(op.equals("-")) {
			result = num1 - num2;
		}
		else if(op.equals("*")) {
			result = num1 * num2;
		}
		else if(op.equals("/")) {
			result = num1 / num2;
		}
		return result;
	}
}