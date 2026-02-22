<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Register Form</title>

<style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Segoe UI', sans-serif;
}

body{
  background:#f4f6f9;
}

/* PAGE WRAPPER */
.page-wrapper{
  min-height:calc(100vh - 70px);
  display:flex;
  justify-content:center;
  align-items:center;
  padding:40px 20px;
}

/* FORM BOX */
.form-box{
  width:100%;
  max-width:520px;
  background:#ffffff;
  padding:30px;
  border-radius:16px;
  box-shadow:0 10px 25px rgba(0,0,0,0.08);
  border:1px solid #eee;
}

.form-box h2{
  text-align:center;
  margin-bottom:25px;
  font-size:26px;
  color:#111;
}

/* INPUT GROUP */
.input-group{
  margin-bottom:16px;
}

label{
  font-size:14px;
  font-weight:600;
  margin-bottom:6px;
  display:block;
  color:#333;
}

input, textarea{
  width:100%;
  padding:12px;
  border-radius:10px;
  border:1px solid #ddd;
  font-size:14px;
  transition:0.2s ease;
  outline:none;
}

input:focus,
textarea:focus{
  border-color:#1d4ed8;
  box-shadow:0 0 0 3px rgba(29,78,216,0.15);
}

textarea{
  resize:none;
  height:80px;
}

/* BUTTON */
.btn{
  width:100%;
  padding:13px;
  border:none;
  border-radius:10px;
  background:#111827;
  color:#fff;
  font-weight:600;
  cursor:pointer;
  font-size:15px;
  margin-top:10px;
  transition:0.2s;
}

.btn:hover{
  background:#1d4ed8;
  transform:translateY(-1px);
}

/* LINKS */
.links{
  margin-top:18px;
  text-align:center;
  font-size:14px;
}

.links a{
  text-decoration:none;
  color:#1d4ed8;
  font-weight:600;
}

.links a:hover{
  text-decoration:underline;
}

/* ===== RESPONSIVE ===== */

/* Tablet */
@media(max-width:768px){
  .page-wrapper{
    padding:30px 15px;
  }

  .form-box{
    padding:25px;
  }

  .form-box h2{
    font-size:22px;
  }
}

/* Mobile */
@media(max-width:480px){

  .form-box{
    padding:20px;
    border-radius:12px;
  }

  input, textarea{
    font-size:13px;
    padding:10px;
  }

  .btn{
    font-size:14px;
    padding:12px;
  }
}
</style>
</head>

<body>

<!-- Include Responsive Header -->
<jsp:include page="header.jsp"/>

<div class="page-wrapper">

  <div class="form-box">
    <h2>Register Form</h2>

    <form action="register" method="get">

      <div class="input-group">
        <label>First Name</label>
        <input name="fname" type="text" placeholder="Enter first name" required>
      </div>

      <div class="input-group">
        <label>Last Name</label>
        <input name="lname" type="text" placeholder="Enter last name" required>
      </div>

      <div class="input-group">
        <label>Email</label>
        <input name="email" type="email" placeholder="Enter email" required>
      </div>

      <div class="input-group">
        <label>Password</label>
        <input name="password" type="password" placeholder="Enter password" required>
      </div>

      <div class="input-group">
        <label>Phone Number</label>
        <input name="phone" type="text" placeholder="Enter phone number" required>
      </div>

      <div class="input-group">
        <label>Gender</label>
        <input name="gender" type="text" placeholder="Enter gender" required>
      </div>

      <div class="input-group">
        <label>Country</label>
        <input name="country" type="text" placeholder="Enter country" required>
      </div>

      <div class="input-group">
        <label>Address</label>
        <textarea name="address" placeholder="Enter full address" required></textarea>
      </div>

      <button class="btn" type="submit">Register</button>

      <div class="links">
        Already have an account? <a href="/login">Login</a>
      </div>

    </form>
  </div>

</div>

</body>
</html>