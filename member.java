
public class member {
	private String fname,birthday,pin;

	public member(String fname, String birthday, String pin) {
		super();
		this.fname = fname;
		this.birthday = birthday;
		this.pin = pin;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public member() {
		super();
	}
	

}
