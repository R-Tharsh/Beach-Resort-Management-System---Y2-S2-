<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="Food/css/style.css">
      <style>
  
  .dropdown
  {
  background-color:#175973;
  }
    
    </style>
</head>
<body>

    <div class="main" style="background:#f5f5f5">

        <div class="container">
            <div class="booking-content">
                <div style="margin-top:60px" class="booking-image">
                    <img class="booking-img" src="Food/images/food.jpg" alt="Booking Image">
                </div>
                <div class="booking-form" style="background:#175973">
                    <form id="booking-form" action="insertuserres" method="post">
                        <h2>Book  your Food!</h2>
                        <div class="form-group form-input">
                            <input  value="${user}" type="text" name="user" required/>
                            <label   class="form-label">Username</label>
                        </div>
                       
                        <div class="form-group">
                            <div >
                                <select  class="dropdown" name="juice"  required>
                                    <option value="">Juice Items</option>
                                    <option value="Banana Juice">Banana Juice</option>
                                    <option value="Orange Juice">Orange Juice</option>
                                     <option value="PineApple Juice">PineApple Juice</option>
                                    <option value="Apple Juice">Apple Juice</option>
                                  
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="select-list">
                                <select  class="dropdown" name="main"  required>
                                    <option value="">Main Food</option>
                                    <option value="chicken briyani">Chicken Briyani</option>
                                    <option value="chicken nasi goreng">Chicken Nasi goreng</option>
                                    <option value="vegetable rice with curry">Vegetable rice with curry</option>
                                    <option value="egg noodles">Egg Noodles</option>
                                    <option value="garlic naan with paneer butter masala">Garlic naan with paneer butter masala</option>
                                </select>
                            </div>
                        </div>
                     <div class="form-group">
                            <div class="select-list">
                                <select  class="dropdown" name="dessert"  required>
                                    <option value="">Dessert</option>
                                    <option value="chocolate mousse">Chocolate mousse</option>
                                    <option value="cheese cake">Cheese cake</option>
                                    <option value="brownie with ice cream">brownie with ice cream</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-submit" >
                            <input type="submit" value="Book now" class="submit" style="background-color:#012840" />
                        
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>