<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact Us</title>

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
  padding:50px 20px;
  display:flex;
  justify-content:center;
}

/* CONTACT CONTAINER */
.contact-container{
  width:100%;
  max-width:1100px;
  background:#fff;
  border-radius:16px;
  box-shadow:0 10px 25px rgba(0,0,0,0.08);
  display:flex;
  overflow:hidden;
}

/* LEFT SIDE - INFO */
.contact-info{
  flex:1;
  background:#111827;
  color:#fff;
  padding:40px;
}

.contact-info h2{
  margin-bottom:20px;
  font-size:24px;
}

.contact-info p{
  margin-bottom:15px;
  font-size:14px;
  color:#d1d5db;
}

/* RIGHT SIDE - FORM */
.contact-form{
  flex:1;
  padding:40px;
}

.contact-form h2{
  margin-bottom:25px;
  font-size:24px;
  color:#111;
}

.input-group{
  margin-bottom:16px;
}

label{
  display:block;
  font-size:14px;
  margin-bottom:6px;
  font-weight:600;
}

input, textarea{
  width:100%;
  padding:12px;
  border-radius:8px;
  border:1px solid #ddd;
  font-size:14px;
  outline:none;
  transition:0.2s;
}

input:focus,
textarea:focus{
  border-color:#1d4ed8;
  box-shadow:0 0 0 3px rgba(29,78,216,0.15);
}

textarea{
  height:100px;
  resize:none;
}

/* BUTTON */
.btn{
  width:100%;
  padding:12px;
  border:none;
  border-radius:8px;
  background:#111827;
  color:#fff;
  font-weight:600;
  cursor:pointer;
  transition:0.2s;
}

.btn:hover{
  background:#1d4ed8;
}

/* RESPONSIVE */
@media(max-width:900px){
  .contact-container{
    flex-direction:column;
  }

  .contact-info{
    text-align:center;
  }
}

@media(max-width:480px){
  .contact-form,
  .contact-info{
    padding:25px;
  }

  .contact-form h2,
  .contact-info h2{
    font-size:20px;
  }
}
</style>
</head>

<body>

<!-- Include Header -->
<jsp:include page="header.jsp"/>

<div class="page-wrapper">

  <div class="contact-container">

    <!-- LEFT INFO -->
    <div class="contact-info">
      <h2>Contact Information</h2>
      <p>📍 Nashik, Maharashtra, India</p>
      <p>📞 +91 9876543210</p>
      <p>✉ support@umsystem.com</p>
      <p>We are here to help you with any queries regarding your account or services.</p>
    </div>

    <!-- RIGHT FORM -->
    <div class="contact-form">
      <h2>Send Message</h2>

      <form action="contact" method="post">

        <div class="input-group">
          <label>Your Name</label>
          <input type="text" name="name" placeholder="Enter your name" required>
        </div>

        <div class="input-group">
          <label>Email</label>
          <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
          <label>Message</label>
          <textarea name="message" placeholder="Write your message..." required></textarea>
        </div>

        <button type="submit" class="btn">Send Message</button>

      </form>
    </div>

  </div>

</div>

</body>
</html>