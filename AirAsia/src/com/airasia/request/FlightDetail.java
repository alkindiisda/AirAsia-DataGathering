package com.airasia.request;

public class FlightDetail {
	
	private Fare lowFare;
	private Fare premiumFare;
	private String originTime;
	private String arrivalTime;
	private String originAirport;
	private String arrivalAirport;
	private String originCity;
	private String arrivalCity;
	private String airplaneCode;
	private String duration;
	
	public FlightDetail() {
		lowFare = new Fare();
		premiumFare = new Fare();
	}
	
	public Fare getLowFare() {
		return lowFare;
	}

	public void setLowFare(Fare lowFare) {
		this.lowFare = lowFare;
	}
	
	public void setLowFare(String adultFare, String childFare,String Currency) {
		this.lowFare.adult = adultFare;
		this.lowFare.child = childFare;
		this.lowFare.currency= Currency;
	}

	public Fare getPremiumFare() {
		return premiumFare;
	}

	public void setPremiumFare(Fare premiumFare) {
		this.premiumFare = premiumFare;
	}
	
	public void setPremiumFare(String adultFare, String childFare,String Currency) {
		this.premiumFare.adult = adultFare;
		this.premiumFare.child = childFare;
		this.premiumFare.currency= Currency;
	}

	public String getOriginTime() {
		return originTime;
	}

	public void setOriginTime(String originTime) {
		this.originTime = originTime;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public String getOriginAirport() {
		return originAirport;
	}

	public void setOriginAirport(String originAirport) {
		this.originAirport = originAirport;
	}

	public String getArrivalAirport() {
		return arrivalAirport;
	}

	public void setArrivalAirport(String arrivalAirport) {
		this.arrivalAirport = arrivalAirport;
	}

	public String getOriginCity() {
		return originCity;
	}

	public void setOriginCity(String originCity) {
		this.originCity = originCity;
	}

	public String getArrivalCity() {
		return arrivalCity;
	}

	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}

	public String getAirplaneCode() {
		return airplaneCode;
	}

	public void setAirplaneCode(String airplaneCode) {
		this.airplaneCode = airplaneCode;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	class Fare{
		public String adult;
		public String child;
		public String currency;
	}
			
}
