package travel.spot;

/**
 * tblRooms 데이터 저장 클래스
 * @author 김정은
 *String roomsSeq tblrooms 의 PK 
String name 숙소 이름 
String explain 설명
String address 주소
String image 이미지 url
String grade 평점 
String wish 찜
String theme 테마
String restaurantX x좌표
String restaurantY y좌표
String plandate 일정날짜
String budget 예산
String seq seq
String url url
String planseq 여행일정 seq
String id 멤버 id


 */
public class RoomDTO {
    //    roomseq name explain address image grade wish theme roomsx roomsy plandate budget seq url planseq id
    private String roomsSeq;
    private String name;
    private String explain;
    private String address;
    private String image;
    private String grade;
    private String wish;
    private String theme;
    private String roomsX;
    private String roomsY;
    private String plandate;
    private String budget;
    private String seq;
    private String url;
    private String planseq;
    private String id;

    public String getRoomsSeq() {
        return roomsSeq;
    }

    public void setRoomsSeq(String roomsSeq) {
        this.roomsSeq = roomsSeq;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getWish() {
        return wish;
    }

    public void setWish(String wish) {
        this.wish = wish;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getRoomsX() {
        return roomsX;
    }

    public void setRoomsX(String roomsX) {
        this.roomsX = roomsX;
    }

    public String getRoomsY() {
        return roomsY;
    }

    public void setRoomsY(String roomsY) {
        this.roomsY = roomsY;
    }

    public String getPlandate() {
        return plandate;
    }

    public void setPlandate(String plandate) {
        this.plandate = plandate;
    }

    public String getBudget() {
        return budget;
    }

    public void setBudget(String budget) {
        this.budget = budget;
    }

    public String getSeq() {
        return seq;
    }

    public void setSeq(String seq) {
        this.seq = seq;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPlanseq() {
        return planseq;
    }

    public void setPlanseq(String planseq) {
        this.planseq = planseq;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}