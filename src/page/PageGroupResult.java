package page;

public class PageGroupResult {

	private int groupStartNumber; // �ǾƷ� ������ ������������
	private int groupEndNumber; // �ǾƷ� ������ ��������������
	
	private boolean beforePage = true;
	private boolean afterPage = true;
	
	private int selectPageNumber;
	
	public int getGroupStartNumber() {
		return groupStartNumber;
	}
	public void setGroupStartNumber(int groupStartNumber) {
		this.groupStartNumber = groupStartNumber;
	}
	public int getGroupEndNumber() {
		return groupEndNumber;
	}
	public void setGroupEndNumber(int groupEndNumber) {
		this.groupEndNumber = groupEndNumber;
	}
	public boolean isBeforePage() {
		return beforePage;
	}
	public void setBeforePage(boolean beforePage) {
		this.beforePage = beforePage;
	}
	public boolean isAfterPage() {
		return afterPage;
	}
	public void setAfterPage(boolean afterPage) {
		this.afterPage = afterPage;
	}
	public int getSelectPageNumber() {
		return selectPageNumber;
	}
	public void setSelectPageNumber(int selectPageNumber) {
		this.selectPageNumber = selectPageNumber;
	}
	public void setInt(int i, int lecture_no) {
		// TODO Auto-generated method stub
		
	}

}
