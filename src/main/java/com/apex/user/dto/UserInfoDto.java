package com.apex.user.dto;


public class UserInfoDto {

	private String firstname;

	private String lastname;

	private String middlename;

	private String email;

	private String password;

	private int userid;

	private String dob;

	private String repassword;
	private String gender;
	private String address;
	private String city;
	private String state;
	private String country;

	private String mobile;
	private String zipcode;

	private String bankname;
	private String account;
	private String ssn;

	public UserInfoDto() {

	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getMiddlename() {
		return middlename;
	}

	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "UserInfoVO [firstname=" + firstname + ", lastname=" + lastname + ", middlename=" + middlename
				+ ", email=" + email + ", password=" + password + ", userid=" + userid + ", dob=" + dob
				+ ", repassword=" + repassword + ", gender=" + gender + ", address=" + address + ", city=" + city
				+ ", state=" + state + ", country=" + country + ", mobile=" + mobile + ", zipcode=" + zipcode
				+ ", bankname=" + bankname + ", account=" + account + ", ssn=" + ssn + "]";
	}

	public UserInfoDto(String firstname, String lastname, String middlename, String email, String password, int userid,
			String dob, String repassword, String gender, String address, String city, String state, String country,
			String mobile, String zipcode, String bankname, String account, String ssn) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.middlename = middlename;
		this.email = email;
		this.password = password;
		this.userid = userid;
		this.dob = dob;
		this.repassword = repassword;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
		this.country = country;
		this.mobile = mobile;
		this.zipcode = zipcode;
		this.bankname = bankname;
		this.account = account;
		this.ssn = ssn;
	}

}
