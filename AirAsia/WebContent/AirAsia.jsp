<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
   <head>
      <title>Air Asia</title>
   </head>
   <body>
      Air Asia, Depart Date: 
      <s:property value="formrequest.departDate"/>
      Return Date:  
      <s:property value="formrequest.returnDate"/>
      <s:iterator value="details">
         <p>
            Property lowFare (Adult): 
            <s:property value="lowFare.adult" />
         </p>
         <p>
            Property lowFare (Child): 
            <s:property value="lowFare.child" />
         </p>
         <p>
            Property lowFare (Currency): 
            <s:property value="lowFare.currency" />
         </p>
         <p>
            Property premiumFare (Adult): 
            <s:property value="premiumFare.adult" />
         </p>
         <p>
            Property premiumFare (Child): 
            <s:property value="premiumFare.child" />
         </p>
         <p>
            Property premiumFare (Currency): 
            <s:property value="premiumFare.currency" />
         </p>
         <p>
            Property originTime: 
            <s:property value="originTime" />
         </p>
         <p>
            Property arrivalTime: 
            <s:property value="arrivalTime" />
         </p>
         <p>
            Property originAirport: 
            <s:property value="originAirport" />
         </p>
         <p>
            Property arrivalAirport: 
            <s:property value="arrivalAirport" />
         </p>
         <p>
            Property originCity: 
            <s:property value="originCity" />
         </p>
         <p>
            Property arrivalCity: 
            <s:property value="arrivalCity" />
         </p>
         <p>
            Property airplaneCode: 
            <s:property value="airplaneCode" />
         </p>
         <p>
            Property duration: 
            <s:property value="duration" />
         </p>
         <p>===========================================================</p>
      </s:iterator>
   </body>
</html>