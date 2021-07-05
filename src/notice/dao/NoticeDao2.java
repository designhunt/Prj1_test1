package notice.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import notice.vo.Notice;

public class NoticeDao2 {
	
	public Notice getNotice(String seq) throws Exception {
		String sql="select * from notices where seq="+seq;
		//db connect
		//드라이버로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		//실행
		Statement st=con.createStatement();

		//결과
		ResultSet rs=st.executeQuery(sql);//select 실행
		rs.next();
		
		//
		Notice n=new Notice();
		//NoticeDetail에서 필요한 정보를 Notice에 담아보기
		
		n.setSeq(rs.getString("seq"));
		n.setTitle(rs.getString("title"));
		n.setWriter(rs.getString("write"));
		n.setContent(rs.getString("content"));
		n.setRegdate(rs.getDate("regdate"));
		n.setHit(rs.getInt("hit"));
		rs.close();
		st.close();
		con.close();
		
		
		return n;
	}
}




