package resort.servlet.event;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.EventDao;
import resort.model.Event;

@WebServlet("/updateevent")
public class EventUpdateServlet extends HttpServlet {
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
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id"+id);
		String guest = request.getParameter("guest");
		System.out.println("guest"+guest);
		int mobile = Integer.parseInt(request.getParameter("mobile"));
		System.out.println("guest mobile"+mobile);
		String eventname = request.getParameter("eventname");
		System.out.println("guest addition"+eventname);
		String facilities = request.getParameter("facilities");
		System.out.println("guest facilities"+facilities);
		String date = request.getParameter("Date");
		
		System.out.println("guest facilities date"+date);
		System.out.println("Updating............");
		
		Event ban = new Event(id, guest, mobile, eventname, facilities, date);

		try {
			System.err.println("working");
			EventDao.updateEvent(ban);
			System.out.println("event Updating...........");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("listevent");

	}

}