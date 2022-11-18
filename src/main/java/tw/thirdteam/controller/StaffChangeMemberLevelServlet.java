package tw.thirdteam.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import tw.thirdteam.model.Member;
import tw.thirdteam.model.MemberService;
import tw.thirdteam.util.HibernateUtil;

@WebServlet("/changememberlevel.do")
public class StaffChangeMemberLevelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.valueOf(request.getParameter("memberid"));
		String level = request.getParameter("memberlevel");
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session currentsession = factory.getCurrentSession();
		MemberService mService = new MemberService(currentsession);
		if (level.equals("一般會員")) {
			mService.changeLevelToStop(id);
		}
		if (level.equals("停用")) {
			mService.changeLevelToUser(id);
		}
		List<Member> aL = mService.selectAll();
		request.setAttribute("listmember", aL);
		request.getRequestDispatcher("StaffManageMember.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
