package com.airasia.request;

public class FormRequest {
	
	 private String origin;
	 private String depart;
	 private String departDate;
	 private String returnDate;
	 private String currency;
	 private String adult;
	 private String child;
	 private String infant;
	 private boolean returnStatus;
	 private String flightClass;
	 
	public String getFlightClass() {
		return flightClass;
	}
	public void setFlightClass(String flightClass) {
		this.flightClass = flightClass;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getDepartDate() {
		return departDate;
	}
	public void setDepartDate(String departDate) {
		this.departDate = departDate;
	}
	public String getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getAdult() {
		return adult;
	}
	public void setAdult(String adult) {
		this.adult = adult;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	public String getInfant() {
		return infant;
	}
	public void setInfant(String infant) {
		this.infant = infant;
	}
	public boolean getReturnStatus() {
		return returnStatus;
	}
	public void setReturnStatus(boolean returnStatus) {
		this.returnStatus = returnStatus;
	}
	
	
}
