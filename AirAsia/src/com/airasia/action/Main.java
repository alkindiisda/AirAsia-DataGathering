package com.airasia.action;
import com.airasia.request.*;
import com.opensymphony.xwork2.ActionSupport;

public class Main extends ActionSupport{
	
	private static final long serialVersionUID = 265913064677765945L;
	private FormRequest formrequest;
	   private FlightDetail[] details;
	   
	   public FlightDetail[] getDetails() {
		return details;
	}

	public void setDetails(FlightDetail[] details) {
		this.details = details;
	}

	public FormRequest getFormrequest() {
		return formrequest;
	}

	public void setFormrequest(FormRequest test) {
		this.formrequest = test;
	}

	   public String execute()  throws Exception{
		  SearchFlightFare search= new SearchFlightFare(formrequest);
		  details=search.getDetails();
		  search.show();
	      return "success";
	   }
	   
	  
	   
	 
	}
