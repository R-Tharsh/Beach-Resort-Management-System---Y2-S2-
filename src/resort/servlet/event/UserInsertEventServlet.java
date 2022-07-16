package resort.servlet.event;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.EventDao;
import resort.model.Event;




@WebServlet("/insertuserevent")
public class UserInsertEventServlet extends HttpServlet {
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
		String guest = request.getParameter("guest");
		int mobile = Integer.parseInt(request.getParameter("mobile"));
		String eventname = request.getParameter("eventname");
		String facilities = request.getParameter("facilities");
		String date = request.getParameter("Date");
		
		Event newevent = new Event( guest, mobile, eventname,facilities,date);
		try {
			EventDao.insertEvent(newevent);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("listuserevent");
		
	}

	

}