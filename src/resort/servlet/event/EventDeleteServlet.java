package resort.servlet.event;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.EventDao;
import resort.model.Event;
import resort.model.Inventory;



@WebServlet("/deleteevent")
public class EventDeleteServlet extends HttpServlet {
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
		try {
			EventDao.deleteevent(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("listevent");
	}

	

}