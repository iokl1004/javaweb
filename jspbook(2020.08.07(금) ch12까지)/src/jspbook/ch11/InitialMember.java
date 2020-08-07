package jspbook.ch11;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import java.util.*;

@WebListener //현재 클래스가 리스너 라는것을 컨테이너에 알리는 애너테이션이다. 리스너 : 사전에 만들어진 데이터를 로드해주는것.
public class  InitialMember implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
			ServletContext context = sce.getServletContext();
			ArrayList<Member> datas = new ArrayList<Member>();
			
			// JSTL 예제를 위해 0~7 까지의 샘플 데이터를 생성
			for(int i=0;i<10;i++) {
				Member data = new Member("장인기"+i,"iokl3319"+i+"@naver.com");
				datas.add(data);
			}
			
			// email 이 빠진 2개 샘플 데이터 추가
			datas.add(new Member("장복환",null));
			datas.add(new Member("장영환",null));

			// application scope 에 members 및 member 객체 저장
			context.setAttribute("members", datas);
			context.setAttribute("member",new Member());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {}
}