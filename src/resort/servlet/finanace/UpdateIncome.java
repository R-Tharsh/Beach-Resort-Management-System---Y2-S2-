package resort.servlet.finanace;
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import resort.dao.IncomeDAO;


@WebServlet("/UpdateIncome")
public class UpdateIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String date = request.getParameter("date");
		String division = request.getParameter("division");
		float total = Float.parseFloat(request.getParameter("total"));
		String remarks = request.getParameter("remarks");
		
		
		boolean isTrue;
		
		isTrue = IncomeDAO.updateIncome(id, date, division, total, remarks);
				
		if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("ViewIncome.jsp");
				dis.forward(request, response);
				
		}else {
				RequestDispatcher dis2 = request.getRequestDispatcher("UpdateIncome.jsp");
				dis2.forward(request, response);
		}
	}

}
