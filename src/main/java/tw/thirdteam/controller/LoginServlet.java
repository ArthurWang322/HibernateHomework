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

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String memberemail = request.getParameter("memberemail");
		String memberpassword = request.getParameter("memberpassword");
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session currentsession = factory.getCurrentSession();
		try {
			MemberService mService = new MemberService(currentsession);
			Member member = mService.login(memberemail, memberpassword);
			if (member == null) {
				request.setAttribute("status", "failed");
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			} else {
				if (member.getMemberlevel().equals("一般會員")) {
					session.setAttribute("membername", member.getMembername());
					session.setAttribute("memberid", member.getMemberid());
					request.getRequestDispatcher("Index.jsp").forward(request, response);
				}
				if (member.getMemberlevel().equals("停用")) {
					request.setAttribute("memberstatus", "limitmember");
					request.getRequestDispatcher("Login.jsp").forward(request, response);
				}
				if (member.getMemberlevel().equals("管理人員")) {
					session.setAttribute("membername", member.getMembername());
					request.getRequestDispatcher("StaffManageMember.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
