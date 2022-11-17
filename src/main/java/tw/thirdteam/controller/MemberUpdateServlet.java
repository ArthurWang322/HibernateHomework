package tw.thirdteam.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import tw.thirdteam.model.Member;
import tw.thirdteam.model.MemberService;
import tw.thirdteam.util.HibernateUtil;

@WebServlet("/update.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member member = new Member();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		member.setMemberid(Integer.valueOf(request.getParameter("memberid")));
		member.setMembername(request.getParameter("membername"));
		member.setMemberemail(request.getParameter("memberemail"));
		member.setMemberpassword(request.getParameter("memberpassword"));
		member.setMembermobile(request.getParameter("membermobile"));
		member.setMemberlevel("user");
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session currentsession = factory.getCurrentSession();
		MemberService mService = new MemberService(currentsession);
		mService.update(member);
		Member newmember = mService.login(member.getMemberemail(), member.getMemberpassword());
		session.setAttribute("membername", newmember.getMembername());
		request.getRequestDispatcher("Index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
