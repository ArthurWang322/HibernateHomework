package tw.thirdteam.controller;

import java.io.IOException;
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

@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member member = new Member();
		request.setCharacterEncoding("UTF-8");
		String membername = request.getParameter("membername");
		String memberemail = request.getParameter("memberemail");
		String memberpassword = request.getParameter("memberpassword");
		String membermobile = request.getParameter("membermobile");
		member.setMembername(membername);
		member.setMemberemail(memberemail);
		member.setMemberpassword(memberpassword);
		member.setMembermobile(membermobile);
		member.setMemberlevel("一般會員");
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		MemberService mService = new MemberService(session);
		try {
			mService.insert(member);
			request.setAttribute("status", "success");
		} catch (Exception e) {
			request.setAttribute("status", "failed");
//			e.printStackTrace();
		}
		request.getRequestDispatcher("Register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
