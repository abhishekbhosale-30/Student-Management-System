<%@page import="com.example.demo.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Update Form</title>

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

    .form-box{
      width: 100%;
      max-width: 520px;
      background: #fff;
      padding: 28px;
      border-radius: 14px;
      border: 1px solid #ddd;
      box-shadow: 0 10px 22px rgba(0,0,0,0.08);
    }

    .form-box h2{
      color: #111;
      text-align: center;
      margin-bottom: 20px;
      font-size: 26px;
    }

    .input-group{
      margin-bottom: 14px;
    }

    label{
      color: #333;
      font-size: 14px;
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
    }

    input, textarea{
      width: 100%;
      padding: 12px;
      border-radius: 10px;
      border: 1px solid #ccc;
      background: #fff;
      color: #111;
      outline: none;
      font-size: 14px;
      transition: 0.2s;
    }

    input::placeholder,
    textarea::placeholder{
      color: #888;
    }

    input:focus,
    textarea:focus{
      border-color: #2d7ef7;
      box-shadow: 0 0 0 3px rgba(45,126,247,0.18);
    }

    textarea{
      resize: none;
      height: 80px;
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

    /* ✅ Mobile Responsive */
    @media (max-width: 520px){
      .form-box{
        padding: 20px;
        border-radius: 12px;
      }

      .form-box h2{
        font-size: 22px;
      }

      input, textarea{
        padding: 11px;
        font-size: 13px;
      }

      .btn{
        padding: 12px;
        font-size: 15px;
      }
    }
  </style>
</head>

<body>

<%User u = (User) session.getAttribute("data");


%>

  <div class="form-box">
    <h2>Update Form</h2>

    <form action="updatesave" method="post">

		 <input name="id" type="hidden" value="<%=u.getId() %>" >
      <div class="input-group">
        <label>First Name</label>
        <input name="fname" type="text" value="<%=u.getFname() %>" required>
      </div>

      <div class="input-group">
        <label>Last Name</label>
        <input name="lname" type="text" value="<%=u.getLname() %>" required>
      </div>

      <div class="input-group">
        <label>Email</label>
        <input name="email" type="email" value="<%=u.getEmail()%>" required>
      </div>

      <div class="input-group">
        <label>Password</label>
        <input name="password" type="password" value="<%=u.getPassword()%>" required>
      </div>

      <div class="input-group">
        <label>Phone Number</label>
        <input name="phone" type="text" value="<%=u.getPhone() %>" required>
      </div>

      <div class="input-group">
        <label>Gender</label>
        <input name="gender" type="text" value="<%=u.getGender() %>" required>
      </div>

      <div class="input-group">
        <label>Country</label>
        <input name="country" type="text" value="<%=u.getCountry() %>" required>
      </div>

      <div class="input-group">
        <label>Address</label>
        <textarea name="address" rows="4" cols="30"><%=u.getAddress()%></textarea>
        
      </div>

      <button class="btn" type="submit">Register</button>

    </form>
  </div>

</body>
</html>
