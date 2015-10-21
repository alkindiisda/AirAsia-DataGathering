<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title>Flight Search Form v.1.0 </title>
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- Mobile Specific Meta -->
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
      <!-- Stylesheets -->
      <link rel="stylesheet" type="text/css" href="header/css/reset.css" />
      <link rel="stylesheet" type="text/css" href="header/css/styles.css" />
      <link rel="stylesheet" type="text/css" href="header/css/fonts.css" />
      <link rel="stylesheet" type="text/css" href="header/css/animate.css" />
      <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->
      <!-- JS -->
      <script src="http://code.jquery.com/jquery-latest.js"></script>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700' rel='stylesheet' type='text/css'>
      <title>Hello World</title>
   </head>
   <body>
      <form action="hello" method="post"><label for="name">Please enter your name</label><br/><input type="text" name="name"/><input type="submit" value="Say Hello"/></form>
      <section class="container">
         <div class="container-noise">
            <header class="form-header">
               <div class="form-header-overlay">
                  <h1>Flight Search</h1>
               </div>
            </header>
             <s:form action="hello" method="post" enctype="multipart/form-data">
            <div class="top">
               <div class="travel-type">
                  <div class="travel-type-left">
                     <input tabindex="1" type="radio" checked="checked" value="None" class="travel-left-1" name="check" />
                     <label>Return</label>
                  </div>
                  <div class="travel-type-left right">
                     <input tabindex="2" type="radio" value="None" class="travel-left-2" name="check" />
                     <label>One Way</label>
                  </div>
                  <div class="travel-type-right">
                     <label>Flexible Dates</label>
                     <input tabindex="3" type="checkbox" value="None" class="travel-right" name="check" checked="checked" />
                  </div>
               </div>
               <div class="airport-choice">
                  <div class="airport-choice-left">
                     <label>From</label>
                     <select class="depature">
                        <option>Kraków [KRK]</option>
                        <option>Hamburg [HAM]</option>
                        <option>New York [NYK]</option>
                        <option>London [LON]</option>
                        
                     </select> 
                  </div>
                  <div class="airport-choice-right">
                     <label>Date:</label>
                     <input type="date" class="depature-date" name="depature-date" required>
                  </div>
               </div>
               <div class="airport-choice">
                  <div class="airport-choice-left">
                     <label>To</label>
                     <select class="depature">
                        <option>Kraków [KRK]</option>
                        <option>Hamburg [HAM]</option>
                        <option>New York [NYK]</option>
                        <option>London [LON]</option>
                     </select>
                  </div>
                  <div class="airport-choice-right">
                     <label>Date:</label>
                     <input type="date" class="depature-date" name="depature-date" required>
                  </div>
               </div>
               <div class="age-choice">
                  <div class="age-choice-left">
                     <div class="age-choice-age">
                        <label>Adults</label>
                        <select name="adults" class="adults" onchange="intChildOnly();" title="Adults ">
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
                        <select name="child" class="child" title="Child (2-11)">
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
                        <select name="infants" class="infants" title="Infants (&lt;2)">
                           <option value="0">0</option>
                           <option value="1">1</option>
                           <option value="2">2</option>
                           <option value="3">3</option>
                           <option value="4">4</option>
                        </select>
                     </div>
                  </div>
                  <div class="age-choice-right">
                     <label>Flight Class</label>
                     <select name="flight-class" class="flight-class" title="Flight Class">
                        <option value="0">Economy</option>
                        <option value="1">Business</option>
                     </select>
                  </div>
               </div>
            </div>
           </s:form>
            <footer class="bottom">
               <div class="buttons">
                  <a href="#" class="button reset">Reset</a>
                  <a href="#" class="button search">Search</a>
               </div>
            </footer>
         </div>
      </section>
   </body>
</html>