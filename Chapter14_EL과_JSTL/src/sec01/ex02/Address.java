package sec01.ex02;

public class Address {
	private String city;//회원의 거주도시
	private String zipcode;//우편번호
	
	//매개변수가 없는 기본생성자 반드시 존재(생성안할 시 기본생성자 자동생성)
	//눈에 보이게 코드 적고싶다면 아래코드 작성
	public Address() {}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}
