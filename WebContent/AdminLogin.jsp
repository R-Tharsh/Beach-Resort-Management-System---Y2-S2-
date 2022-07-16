<<style>
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300);
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  font-weight: 300;
}
body {
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}
body ::-webkit-input-placeholder {
  /* WebKit browsers */
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}
body :-moz-placeholder {
  /* Mozilla Firefox 4 to 18 */
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  opacity: 1;
  font-weight: 300;
}
body ::-moz-placeholder {
  /* Mozilla Firefox 19+ */
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  opacity: 1;
  font-weight: 300;
}
body :-ms-input-placeholder {
  /* Internet Explorer 10+ */
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}
.wrapper {
  position: absolute;
  border: 1px solid #BFBFBF;
  box-shadow: 2px 2px 10px 10px #BFBFBF;
  background-color: #F3F3F3;
  top: 50%;
  left: 0;
  width: 80%;
  height: 400px;
  margin-top: -200px;
  margin-left: 10%;
  overflow: hidden;
}
.wrapper.form-success .container h1 {
          transform: translateY(85px);
}
.container {
  
  margin: 0 auto;
  padding: 80px 0;
  height: 400px;
  text-align: center;
}
.container h1 {
  font-size: 40px;
  transition-duration: 1s;
  transition-timing-function: ease-in-     put;
  font-weight: 600;
  margin-right: 600px;
  color: #012840;
  margin-top: -50px;
}
.container h2 {
  font-size: 30px;
  transition-duration: 1s;
  transition-timing-function: ease-in-     put;
  font-weight: 400;
  margin-right: 600px;
  color: #012840;
  margin-top: 20px;
}
form {
  padding: 20px 0;
  position: relative;
  z-index: 2;
   margin-right: 600px;
   margin-top: 10px;
}
form input {
          appearance: none;
  outline: 0;
 border: 1px solid #175973;
  background-color: #2999A6;
  width: 250px;
  border-radius: 3px;
  padding: 10px 15px;
  margin: 0 auto 10px auto;
  display: block;
  text-align: center;
  font-size: 18px;
  color: #F2F2F2;
  -webkit-transition-duration: 0.25s;
          transition-duration: 0.25s;
  font-weight: 300;
}

form button {
          appearance: none;
  outline: 0;
  background-color: #012840;
  border: 0;
  padding: 10px 15px;
  color: #F2F2F2;
  border-radius: 30px;
  width: 150px;
  cursor: pointer;
  font-size: 18px;
  transition-duration: 0.25s;
  margin-top: 30px;
}
.login100-pic {
  width: 550px;
  height: auto;
}

.login100-pic img {
  margin-left: 550px;
  margin-top: -430px;
  max-width: 100%;
}

</style>
<<script type="text/javascript">
$("#login-button").click(function(event){
   event.preventDefault();

$('form').fadeOut(500);
$('.wrapper').addClass('form-success');
});
</script>

<div class="wrapper">
  <div class="container">
    <h1>Welcome !</h1>
    <h2>Sign in to your account</h2>
  
          <form class="login100-form validate-form" action="<%=request.getContextPath()%>/loginadmin" method="post">

      <input type="text" placeholder="Username" name="username" required>
      <input type="password" placeholder="Password"  name="password" required>
      <button type="submit" value="Submit" id="login-button">Login</button>
      <div class="login100-pic js-tilt" data-tilt>
          <img src="Login/images/al.jpg" alt="IMG">
        </div>
    </form>
  </div>
</div>