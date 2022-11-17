package tw.thirdteam.model;

import java.util.List;

public interface IMemberService {
	public Member selectById(int memberid);

	public List<Member> selectAll();

	public Member login(String memberemail, String memberpassword);

	public Member insert(Member member);

	public Member update(Member member);

	public boolean deleteById(int memberid);
}
