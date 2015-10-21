<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title>Flight Search AirAsia </title>
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- Mobile Specific Meta -->
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <!-- Stylesheets -->
      <link rel="stylesheet" type="text/css" href="header/css/reset.css" />
      <link rel="stylesheet" type="text/css" href="header/css/styles.css" />
      <link rel="stylesheet" type="text/css" href="header/css/fonts.css" />
      <link rel="stylesheet" type="text/css" href="header/css/animate.css" />
      <!-- JS -->
      <script src="http://code.jquery.com/jquery-laformrequest.js"></script>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700' rel='stylesheet' type='text/css'>
      <title>Air Asia</title>
   </head>
   <body>
      <section class="container">
         <div class="container-noise">
            <header class="form-header">
               <div class="form-header-overlay">
                  <h1>Flight Search</h1>
               </div>
            </header>
            <s:form action="hello" method="post">
               <div class="top">
                  <div class="travel-type">
                     <div class="travel-type-left">
                        <input tabindex="2" type="radio" name="formrequest.returnStatus" value="false"  class="travel-left-2" />
                        <label>One Way</label>
                     </div>
                     <div class="travel-type-left right">
                        <input tabindex="1" type="radio" name="formrequest.returnStatus" value="true" checked="checked" class="travel-left-1" />
                        <label>Return</label>
                     </div>
                     <!--  <div class="travel-type-right">
                        <label>Flexible Dates</label>
                        <input tabindex="3" type="checkbox" value="None" class="travel-right" name="check" checked="checked" />
                        </div> -->
                  </div>
                  <div class="airport-choice">
                     <div class="airport-choice-left">
                        <label>From</label>
                        <select name="formrequest.origin" class="depature">
                           <option value="CGK">Jakarta [CGK]</option>
                           <option value="DPS">Bali [DPS]</option>
                           <option value="KNO">Medan [KNO]</option>
                           <option value="SUB">Surabaya [SUB]</option>
                           <option value="JOG">Yogyakarta [JOG]</option>
                        </select>
                     </div>
                     <div class="airport-choice-right">
                        <label>Date:</label>
                        <input type="date" name="formrequest.departDate" class="depature-date" required>
                     </div>
                  </div>
                  <div class="airport-choice">
                     <div class="airport-choice-left">
                        <label>To</label>
                        <select name="formrequest.depart" class="depature">
                           <option value="CGK">Jakarta [CGK]</option>
                           <option value="DPS">Bali [DPS]</option>
                           <option value="KNO">Medan [KNO]</option>
                           <option value="SUB">Surabaya [SUB]</option>
                           <option value="JOG">Yogyakarta [JOG]</option>
                        </select>
                     </div>
                     <div class="airport-choice-right">
                        <label>Date:</label>
                        <input name="formrequest.returnDate" type="date" class="depature-date" required>
                     </div>
                  </div>
                  <div class="age-choice">
                     <div class="age-choice-left">
                        <div class="age-choice-age">
                           <label>Adults</label>
                           <select name="formrequest.adult" class="adults" onchange="intChildOnly();" title="Adults ">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                              <option value="9">9</option>
                           </select>
                        </div>
                        <div class="age-choice-age">
                           <label>Child &lt;16</label>
                           <select name="formrequest.child" class="child" title="Child (2-11)">
                              <option value="0">0</option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                              <option value="5">5</option>
                              <option value="6">6</option>
                              <option value="7">7</option>
                              <option value="8">8</option>
                           </select>
                        </div>
                        <div class="age-choice-age">
                           <label>Infants &lt;2</label>
                           <select name="formrequest.infant" class="infants" title="Infants (&lt;2)">
                              <option value="0">0</option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                           </select>
                        </div>
                     </div>
                     <div class="age-choice-right">
                        <label>Currency</label>
                        <select name="formrequest.currency" class="flight-class" title="Currency">
                           <option value="IDR">IDR - Rupiah</option>
                           <option value="AUD">AUD - Dolar Australia</option>
                           <option value="CNY">CNY - Yuan Tiongkok</option>
                           <option value="EUR">EUR - Euro</option>
                           <option value="GBP">GBP - Sterling</option>
                           <option value="HKD">HKD - Dolar Hong Kong</option>
                           <option value="JPY">JPY - Yen Jepang</option>
                           <option value="MYR">MYR - Ringgit Malaysia</option>
                           <option value="NZD">NZD - Dolar Selandia Baru</option>
                           <option value="PHP">PHP - Peso Filipina</option>
                           <option value="SGD">SGD - Dolar Singapura</option>
                           <option value="THB">THB - Baht Thailand</option>
                           <option value="USD">USD - Dolar AS</option>
                        </select>
                     </div>
                  </div>
               </div>
               <footer class="bottom">
                  <div class="buttons">
                     <input type="submit" value="Search"  class="button search"/>
                  </div>
               </footer>
            </s:form>
         </div>
      </section>
   </body>
</html>