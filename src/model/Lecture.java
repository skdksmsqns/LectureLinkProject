package model;

public class Lecture {


    int lecture_no;
    String lecture_name;
    String lecture_teacher;
    int price;
    int book_price;
    String lecture_Url;
    String description;
	public int getLecture_no() {
		return lecture_no;
	}
	public void setLecture_no(int lecture_no) {
		this.lecture_no = lecture_no;
	}
	public String getLecture_name() {
		return lecture_name;
	}
	public void setLecture_name(String lecture_name) {
		this.lecture_name = lecture_name;
	}
	public String getLecture_teacher() {
		return lecture_teacher;
	}
	public void setLecture_teacher(String lecture_teacher) {
		this.lecture_teacher = lecture_teacher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getLecture_Url() {
		return lecture_Url;
	}
	public void setLecture_Url(String lecture_Url) {
		this.lecture_Url = lecture_Url;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Lecture [lecture_no=" + lecture_no + ", lecture_name=" + lecture_name + ", lecture_teacher="
				+ lecture_teacher + ", price=" + price + ", book_price=" + book_price + ", lecture_Url=" + lecture_Url
				+ ", description=" + description + "]";
	}
    
	
    
    
    
}
