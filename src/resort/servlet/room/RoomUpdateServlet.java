package resort.servlet.room;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.RoomsDao;
import resort.model.Employee;
import resort.model.Inventory;
import resort.model.Rooms;

@WebServlet("/updateroom")
public class RoomUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoomsDao RoomsDao;

	public void init() {
		RoomsDao = new RoomsDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		int id = Integer.parseInt(request.getParameter("id"));

		String roomtype = request.getParameter("roomtype");

		int nobeds = Integer.parseInt(request.getParameter("nobeds"));
		String facilities = request.getParameter("facilities");
		int cost = Integer.parseInt(request.getParameter("cost"));
	

		Rooms room = new Rooms(id,roomtype, nobeds, facilities, cost);
		try {
			RoomsDao.updateRooms(room);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("listroom");
		
	}

	

}