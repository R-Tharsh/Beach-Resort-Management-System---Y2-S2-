package resort.model;

public class Event {
	public int id;
	public String guest;
	public int mobile;
	public String eventname;
	public String facilities;
	public String date;
	public String filename;
	public String path;

	public Event(String filename, String path) {
		super();
		this.filename = filename;
		this.path = path;
	}



	public Event(String guest, int mobile, String eventname, String facilities, String date) {
		super();
		this.guest = guest;
		this.mobile = mobile;
		this.eventname = eventname;
		this.facilities = facilities;
		this.date = date;
	}



	public Event(int id, String guest, int mobile, String eventname, String facilities, String date) {
		super();
		this.id = id;
		this.guest = guest;
		this.mobile = mobile;
		this.eventname = eventname;
		this.facilities = facilities;
		this.date = date;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGuest() {
		return guest;
	}

	public void setGuest(String guest) {
		this.guest = guest;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String geteventname() {
		return eventname;
	}

	public void seteventname(String eventname) {
		this.eventname = eventname;
	}

	public String getfacilities() {
		return facilities;
	}

	public void setfacilities(String facilities) {
		this.facilities = facilities;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
