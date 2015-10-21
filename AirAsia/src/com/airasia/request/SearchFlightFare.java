package com.airasia.request;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class SearchFlightFare {

	private FlightDetail[] details;
	private int timeout = 10000;
	private Document doc = null;
	private String BASE_URL = "https://booking.airasia.com/Flight/InternalSelect?o1=%s&d1=%s&dd1=%s&dd2=%s&r=%s&ADT=%s&CHD=%s&inl=%s&s=true&mon=true&culture=id-ID&cc=%s";
	private String URL;

	public SearchFlightFare(FormRequest formdata) {
		URL = String.format(BASE_URL, formdata.getOrigin(), formdata.getDepart(), formdata.getDepartDate(), formdata.getReturnDate(),
		formdata.getReturnStatus(), formdata.getAdult(), formdata.getChild(), formdata.getInfant(), formdata.getCurrency());

		getResult();
	}

	public FlightDetail[] getDetails() {
		return details;
	}
	private void getResult() {

		String url = URL;


		// Download the HTML and store in a Document
		try {
			doc = Jsoup.connect(url).userAgent("Mozilla").timeout(timeout).get();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}


		Elements domHTML = doc.getElementsByClass("avail-fare-td");
		Element stations = doc.getElementsByClass("price-display-header-stations").first();
		details = new FlightDetail[domHTML.size()];
		System.out.println("isi array : " + domHTML.size() + "," + details.length);
		int nextIndex = 0;


		for (Element element: domHTML) {
			details[nextIndex] = new FlightDetail();
			setAirports(nextIndex, stations);
			setTimeInfo(nextIndex, element);
			setAirplaneCode(nextIndex, element);
			setLowFare(nextIndex, element.nextElementSibling());
			setPremiumFare(nextIndex, element.nextElementSibling().nextElementSibling());
			nextIndex++;
		}

	}

	private void setAirports(int id, Element stations) {

		String originData = stations.getElementsByTag("span").get(0).text();
		String arrivalData = stations.getElementsByTag("span").get(2).text();
		Matcher origin = regex(".*?([\\w]+)\\s.([\\w]+).*", originData);
		Matcher arrival = regex(".*?([\\w]+)\\s.([\\w]+).*", arrivalData);

		if (origin != null && origin.groupCount() > 1) {

			details[id].setOriginCity(origin.group(1).toString());
			details[id].setOriginAirport(origin.group(2).toString());

		}

		if (arrival != null && arrival.groupCount() > 1) {
			details[id].setArrivalCity(arrival.group(1).toString());
			details[id].setArrivalAirport(arrival.group(2).toString());

		}

	}

	private void setTimeInfo(int id, Element element) {
		Elements info = element.getElementsByClass("avail-table-bold");
		Elements duration = element.getElementsByClass("avail-table-detail");

		details[id].setOriginTime(info.get(0).text());
		details[id].setArrivalTime(info.get(1).text());
		details[id].setDuration(duration.get(3).text());

	}

	private void setAirplaneCode(int id, Element element) {

		details[id].setAirplaneCode(element.getElementsByClass("carrier-hover-bold").get(0).text());

	}

	private void setLowFare(int id, Element element) {
		Elements Fare = element.getElementsByClass("avail-fare-price-wrapper");
		String adultFare = "";
		String childFare = "";
		String currency = "";
		for (Element FareDetails: Fare) {

			if (FareDetails.child(0).attr("id").toLowerCase().contains("adt")) {
				adultFare = FareDetails.child(0).attr("data-val");
			}
			if (FareDetails.child(0).attr("id").toLowerCase().contains("chd")) {
				childFare = FareDetails.child(0).attr("data-val");
			}
		}

		currency = Fare.get(0).text().split(" ")[1];
		details[id].setLowFare(adultFare, childFare, currency);

	}

	private void setPremiumFare(int id, Element element) {
		Elements Fare = element.getElementsByClass("avail-fare-price-wrapper");
		String adultFare = "";
		String childFare = "";
		String currency = "";
		for (Element FareDetails: Fare) {

			if (FareDetails.child(0).attr("id").toLowerCase().contains("adt")) {
				adultFare = FareDetails.child(0).attr("data-val");
			}
			if (FareDetails.child(0).attr("id").toLowerCase().contains("chd")) {
				childFare = FareDetails.child(0).attr("data-val");
			}
		}

		currency = Fare.get(0).text().split(" ")[1];
		details[id].setPremiumFare(adultFare, childFare, currency);

	}



	private Matcher regex(String regex, String words) {
		Matcher m = null;
		try {
			Pattern p = Pattern.compile(regex);
			m = p.matcher(words);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}


		if (m.matches()) {
			return m;
		} else {
			return null;
		}
	}

	public void show() {
		for (FlightDetail detail: details) {

			debug(detail.getAirplaneCode());
			debug(detail.getArrivalAirport());
			debug(detail.getArrivalCity());
			debug(detail.getArrivalTime());
			debug(detail.getDuration());
			debug(detail.getOriginAirport());
			debug(detail.getOriginCity());
			debug(detail.getOriginTime());
			debug(detail.getLowFare().adult);
			debug(detail.getLowFare().child);
			debug(detail.getLowFare().currency);
			debug(detail.getPremiumFare().adult);
			debug(detail.getPremiumFare().child);
			debug(detail.getPremiumFare().currency);
			debug("========================================================================");
		}

	}

	private void debug(String data) {

		System.out.println(data);
	}

}