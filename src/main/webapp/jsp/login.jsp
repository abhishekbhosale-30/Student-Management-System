<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>

<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
  }

  body{
    background: #ffffff;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    color: #111;
  }

  .login-box{
    width: 100%;
    max-width: 450px;
    background: #fff;
    padding: 28px;
    border-radius: 14px;
    border: 1px solid #ddd;
    box-shadow: 0 10px 22px rgba(0,0,0,0.08);
  }

  .login-box h2{
    text-align: center;
    font-size: 26px;
    margin-bottom: 10px;
    color: #111;
  }

  .login-box p{
    text-align: center;
    font-size: 14px;
    color: #555;
    margin-bottom: 22px;
  }

  .input-group{
    margin-bottom: 14px;
  }

  label{
    display: block;
    margin-bottom: 6px;
    font-size: 14px;
    font-weight: bold;
    color: #333;
  }

  input{
    width: 100%;
    padding: 12px;
    border-radius: 10px;
    border: 1px solid #ccc;
    outline: none;
    font-size: 14px;
    transition: 0.2s;
  }

  input:focus{
    border-color: #2d7ef7;
    box-shadow: 0 0 0 3px rgba(45,126,247,0.18);
  }

  .btn{
    width: 100%;
    padding: 13px;
    border: none;
    border-radius: 10px;
    background: #111;
    color: #fff;
    font-weight: bold;
    cursor: pointer;
    font-size: 16px;
    margin-top: 10px;
    transition: 0.2s;
  }

  .btn:hover{
    background: #2d7ef7;
    transform: translateY(-1px);
  }

  .btn:active{
    transform: translateY(1px);
  }

  .links{
    margin-top: 16px;
    text-align: center;
    font-size: 14px;
  }

  .links a{
    text-decoration: none;
    color: #2d7ef7;
    font-weight: bold;
  }

  .links a:hover{
    text-decoration: underline;
  }

  @media(max-width: 500px){
    .login-box{
      padding: 20px;
      border-radius: 12px;
    }

    .login-box h2{
      font-size: 22px;
    }
  }
</style>

</head>
<body>

<div class="login-box">

  <h2>Login</h2>
  <p>Welcome back! Please login to continue.</p>

  <form action="loginData" method="post">

    <div class="input-group">
      <label>Email</label>
      <input type="email" name="email" placeholder="Enter email" required>
    </div>

    <div class="input-group">
      <label>Password</label>
      <input type="password" name="password" placeholder="Enter password" required>
    </div>

    <button class="btn" type="submit">Login</button>

  </form>

  <div class="links">
 	Forgot Password <a href="/forgotPassword">forgot password</a><br>
    Don't have an account? <a href="/registerform">Register</a>
  </div>

</div>

</body>
</html>
