package dispatcher;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.FundEntity;
import jdbc.FundService;

/**
 * Servlet implementation class Fund
 */
@WebServlet("/Fund")
public class Fund extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// ��ȡsession
		HttpSession session = request.getSession();

		request.setAttribute("nav_item", "Fund");
		int ftype = Integer.parseInt(request.getParameter("ftype"));
		List<FundEntity> funds1 = FundService.getFunds("1");
		List<FundEntity> funds2 = FundService.getFunds("2");
		List<FundEntity> funds3 = FundService.getFunds("3");
		List<FundEntity> funds = FundService.geAlltFunds();
		
		SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
		String date = sdf.format(new Date());

		if(ftype==0) {
			request.setAttribute("funds", funds);
		}
		else if(ftype==1) {
			request.setAttribute("funds", funds1);
		}
		else if(ftype==2) {
			request.setAttribute("funds", funds2);
		}
		else if(ftype==3) {
			request.setAttribute("funds", funds3);
		}
		request.setAttribute("date", date);
		
		RequestDispatcher rd = request.getRequestDispatcher("fund.jsp");

		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
