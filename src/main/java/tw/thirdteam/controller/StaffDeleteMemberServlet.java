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

@WebServlet("/deletemember.do")
public class StaffDeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.valueOf(request.getParameter("memberid"));
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session currentsession = factory.getCurrentSession();
		MemberService mService = new MemberService(currentsession);
		mService.deleteById(id);
		List<Member> aL = mService.selectAll();
		request.setAttribute("listmember", aL);
		request.getRequestDispatcher("StaffManageMember.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
