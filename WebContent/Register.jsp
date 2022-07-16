<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V13</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Register/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Register/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Register/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Register/css/util.css">
	<link rel="stylesheet" type="text/css" href="Register/css/main.css">
<!--===============================================================================================-->

<style>
.limiter {
  width: 75%;

  margin: 0 auto;
   background: #f8f8f8;
}

.container-login100 {
  width: 80%;  
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  flex-wrap: wrap;
}

.wrap-login100 {
  width: 520px;
  min-height: 100vh;
  background: #f8f8f8;
  border-radius: 2px;
  position: relative;
}

/*------------------------------------------------------------------
[ Login100 more ]*/
.login100-more {
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  width: calc(100% - 520px);
  position: relative;
  z-index: 1;
   background: #f8f8f8;
   
}

.login100-more::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 90%;
  top: 0;
  left: 0;
  background: #fff;
  background: -webkit-linear-gradient(bottom, #e8519e, #c77ff2);
  background: -o-linear-gradient(bottom, #e8519e, #c77ff2);
  background: -moz-linear-gradient(bottom, #e8519e, #c77ff2);
  background: linear-gradient(bottom, #e8519e, #c77ff2);
  opacity: 0;
}

.login100-form {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.login100-form-title {
  display: block;
  width: 100%;
  font-family: Poppins-Bold;
  font-size: 30px;
  color: #333333;
  line-height: 1.2;
  text-align: left;
}



/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
  width: 90%;
  position: relative;
  border-bottom: 2px solid #dbdbdb;
  margin-bottom: 45px;
}

.label-input100 {
  font-family: Poppins-SemiBold;
  font-size: 15px;
  color: #999999;
  line-height: 1.2;
  padding-left: 2px;
}

.input100 {
  display: block;
  width: 100%;
  height: 15px;
  background: transparent;
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #555555;
  line-height: 1.2;
  padding: 0 2px;
}

.login100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 244px;
  height: 50px;

  font-family: Poppins-Medium;
  font-size: 16px;
  color: #fff;
  line-height: 1.2;
}
.wrap-login100-form-btn {
  display: block;
  position: relative;
  z-index: 1;
  border-radius: 25px;
  overflow: hidden;
}
.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
}
.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
}



</style>
</head>
<body style="height:70%">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('Register/images/reg.jpg');"></div>

			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" action="registeruser" method="post">
					<span class="login100-form-title p-b-59">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input" data-validate="Name is required">
						<span class="label-input100">Full Name</span>
						<input class="input100" type="text" name="fullname" placeholder="Name...">
						<span class="focus-input100"></span>
					</div>

<div class="wrap-input100 validate-input" data-validate="Username is required">
						<span class="label-input100">User Name</span>
						<input class="input100" type="text" name="username" placeholder="UserName...">
						<span class="focus-input100"></span>
					</div>

<div class="wrap-input100 validate-input" data-validate="Mobile is required">
						<span class="label-input100">Mobile</span>
						<input class="input100" type="number" name="mobile" placeholder="Mobile ...">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Address is required">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="address" placeholder="Address ...">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="mail" placeholder="Email addess...">
						<span class="focus-input100"></span>
					</div>

				

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="text" name="password" placeholder="*************">
						<span class="focus-input100"></span>
					</div>

					

					<div class="flex-m w-full p-b-33">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<span class="txt1">
									I agree to the
									<a href="#" class="txt2 hov1">
										Terms of User
									</a>
								</span>
							</label>
						</div>

						
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" type="submit">
								Sign Up
							</button>
						</div>

						<a href="#" class="dis-block txt3 hov1 p-r-30 p-t-10 p-b-10 p-l-30">
							Sign in
							<i class="fa fa-long-arrow-right m-l-5"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="Register/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Register/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Register/vendor/bootstrap/js/popper.js"></script>
	<script src="Register/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Register/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Register/vendor/daterangepicker/moment.min.js"></script>
	<script src="Register/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Register/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Register/js/main.js"></script>

</body>
</html>