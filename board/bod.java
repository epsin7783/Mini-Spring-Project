package board;

public class bod {
	private int bodID;
	private String bodTitle;
	private String userID;
	private String bodDate;
	private String bodContent;
	private int bodAvailable;
	private int bodCount;
	public int getBodCount() {
		return bodCount;
	}
	public void setBodCount(int bodCount) {
		this.bodCount = bodCount;
	}
	public int getBodID() {
		return bodID;
	}
	public void setBodID(int bodID) {
		this.bodID = bodID;
	}
	public String getBodTitle() {
		return bodTitle;
	}
	public void setBodTitle(String bodTitle) {
		this.bodTitle = bodTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBodDate() {
		return bodDate;
	}
	public void setBodDate(String bodDate) {
		this.bodDate = bodDate;
	}
	public String getBodContent() {
		return bodContent;
	}
	public void setBodContent(String bodContent) {
		this.bodContent = bodContent;
	}
	public int getBodAvailable() {
		return bodAvailable;
	}
	public void setBodAvailable(int bodAvailable) {
		this.bodAvailable = bodAvailable;
	}
}
