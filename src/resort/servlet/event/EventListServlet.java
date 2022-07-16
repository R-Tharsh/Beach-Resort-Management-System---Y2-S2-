package resort.servlet.event;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.EventDao;
import resort.model.Event;




@WebServlet("/listevent")
public class EventListServlet extends HttpServlet {
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
		List<Event> list = EventDao.selectAllEvents();
		//System.out.print(listUser);
		request.setAttribute("listevent", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("eventlist.jsp");
		dispatcher.forward(request, response);
	
	}

	

}