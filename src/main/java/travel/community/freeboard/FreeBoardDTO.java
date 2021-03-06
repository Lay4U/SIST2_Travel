package travel.community.freeboard;
/**
 * tblFreeBoard 데이터 저장 클래스
 * @author 김정은
 *String freeboardseq 게시글 seq를 저장하는 변수
String subject 제목을 저장하는 변수
String content 내용을 저장하는 변수
String viewcnt 조회수를 저장하는 변수
String recommcnt 추천수를 저장하는 변수 
String regdate 작성날짜를 저장하는 변수
String id 작성자id를 저장하는 변수
String nick 작성자 닉네임을 저장하는 변수
String isnew 최신 여부를 저장하는 변수
String ccnt 댓글 개수를 저장하는 변수


 */
public class FreeBoardDTO {

	private String freeboardseq;
	private String subject;
	private String content;
	private String viewcnt;
	private String recommcnt;
	private String regdate;
	private String id;
	private String nick;
	private String isnew;
	private String ccnt;
	
	
	
	
	public String getCcnt() {
		return ccnt;
	}
	public void setCcnt(String ccnt) {
		this.ccnt = ccnt;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getIsnew() {
		return isnew;
	}
	public void setIsnew(String isnew) {
		this.isnew = isnew;
	}
	public String getFreeboardseq() {
		return freeboardseq;
	}
	public void setFreeboardseq(String freeboardseq) {
		this.freeboardseq = freeboardseq;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(String viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getRecommcnt() {
		return recommcnt;
	}
	public void setRecommcnt(String recommcnt) {
		this.recommcnt = recommcnt;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
		
	
	
	
	
}
