<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">

  <!-- Mobile Specific Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <!-- Font-->
  <link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
  <link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
  <!-- Main Style Css -->
    <link rel="stylesheet" href="Books/css/style.css"/>
</head>
<body class="form-v10">
<script type="text/javascript">
function updatedate() {
    var firstdate = document.getElementById("checkin").value;
    document.getElementById("checkout").value = "";
    document.getElementById("checkout").setAttribute("min",firstdate);
  }
</script>

  <div class="page-content" style="background:#fff" >
    <div class="form-v10-content">
      <form class="form-detail" action="insertuserRoomBook" method="post" >
      <h2 style="color:#175973;margin-top:50px;font-weight:900"><b>Room Reservation</b><h3 value="${user} " ReadOnly> </h3></h2>
      <img style="height:220px;width:auto;margin-top:170px;margin-left:-250px" src="Login/images/img1.png" alt="IMG">
        <div class="form-left" style="background-color:#D0F2F2">
          
        
          <div class="form-group" style="margin-top:20px">
                    
            <div class="form-row form-row-1">
              <input type="text" value="${user}"  name="user" placeholder="User Name" >
            </div>
            <div class="form-row form-row-2">
              <input type="text" id="nic" name="nic" pattern="^([0-9]{9}[v|V]|[0-9]{12})$" placeholder="NIC" required>
            </div>
          </div>
        
          <div class="form-row">
          <label>Check In</label>
		<input type="date" id="checkin" name="checkin" onchange="updatedate();">



          </div>

          <div class="form-row">
          <label>Check out</label>
		<input type="date" id="checkout" min="" name="checkout">
          </div>
          <div class="form-row">
            <input type="number" name="noofrooms"  placeholder="No Of Rooms" required>
          </div>
          <div class="form-row">
            <input type="number" name="members"  placeholder="Staying Total members" required>
          </div>

         
          
        </div>
        <div class="form-right" style="background-color:#175973">
          
          
          <div class="form-row" style="margin-top:20px">
         <input type="tel" id="mobile" name="mobile" pattern="[0]{1}[1-9]{2}[0-9]{3}[0-9]{4}" placeholder="Your Mobile Number" required>
          </div>
        
          
          <div class="form-row">
             <input type="email" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-z]{2,5}" placeholder="Your Email" required>
          </div>
          <div class="form-checkbox">
            <label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
                <input type="checkbox" name="checkbox">
                <span class="checkmark"></span>
            </label>
          </div>
          <div class="form-row-last">
            <input type="submit" name="register" class="register" value="Book Now" style="background-color:#fff">
          </div>
        </div>
      </form>
    </div>
  </div>
</body>
</html>