package resort.servlet.event;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.EventDao;

import resort.model.Event;




@WebServlet("/listuserevent")
public class UserEventListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EventDao EventDao;
	
	public void init() {
		EventDao = new EventDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		
Cookie c1[] = request.getCookies();
		
		System.out.println("Cookies get");
		System.out.println(c1[0].getValue());
		String loginuser=c1[0].getValue();
		System.out.println("Request");	
		
		
		List<Event> list = EventDao.selectAllEventsbyuser(loginuser);
		//System.out.print(listUser);
		request.setAttribute("listevent", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("UserEventBookingList.jsp");
		dispatcher.forward(request, response);
	
	}

	

}