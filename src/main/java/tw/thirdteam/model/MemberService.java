package tw.thirdteam.model;

import java.util.List;

import org.hibernate.Session;

public class MemberService implements IMemberService {
	private MemberDAO mDao;

	public MemberService(Session session) {
		mDao = new MemberDAO(session);
	}

	public Member selectById(int memberid) {
		return mDao.selectById(memberid);
	}

	public Member login(String memberemail, String memberpassword) {
		return mDao.login(memberemail, memberpassword);
	}

	public List<Member> selectAll() {
		return mDao.selectAll();
	}

	public Member insert(Member member) {
		return mDao.insert(member);
	}

	public Member update(Member member) {
		return mDao.update(member);
	}

	public Member changeLevelToStop(int memberid) {
		return mDao.changeLevelToStop(memberid);
	}

	public Member changeLevelToUser(int memberid) {
		return mDao.changeLevelToUser(memberid);
	}

	public boolean deleteById(int memberid) {
		return mDao.deleteById(memberid);
	}

}
