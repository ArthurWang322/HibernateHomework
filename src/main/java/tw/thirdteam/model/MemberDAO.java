package tw.thirdteam.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class MemberDAO {
	private Session session;

	public MemberDAO(Session session) {
		this.session = session;
	}

	public Member selectById(int memberid) {
		return session.get(Member.class, memberid);
	}

	public Member login(String memberemail, String memberpassword) {
		Query<Member> query = session.createQuery("from Member where memberemail=?0 and memberpassword=?1",
				Member.class);
		query.setParameter(0, memberemail);
		query.setParameter(1, memberpassword);
		Member member = query.uniqueResult();
		return member;
	}

	public List<Member> selectAll() {
		Query<Member> query = session.createQuery("from Member", Member.class);
		return query.list();
	}

	public Member insert(Member member) {
		Member rs = session.get(Member.class, member.getMemberid());
		if (rs == null) {
			session.save(member);
			return member;
		}
		return null;
	}

	public Member update(Member member) {
		Member rs = session.get(Member.class, member.getMemberid());
		if (rs != null) {
			rs.setMembername(member.getMembername());
			rs.setMemberemail(member.getMemberemail());
			rs.setMemberpassword(member.getMemberpassword());
			rs.setMembermobile(member.getMembermobile());
			rs.setMemberlevel(member.getMemberlevel());
		}
		return rs;
	}

	public Member changeLevelToStop(int memberid) {
		Member rs = session.get(Member.class, memberid);
		if (rs != null) {
			rs.setMemberlevel("停用");
		}
		return rs;
	}

	public Member changeLevelToUser(int memberid) {
		Member rs = session.get(Member.class, memberid);
		if (rs != null) {
			rs.setMemberlevel("一般會員");
		}
		return rs;
	}

	public boolean deleteById(int memberid) {
		Member rs = session.get(Member.class, memberid);
		if (rs != null) {
			session.delete(rs);
			return true;
		}
		return false;
	}

}
