<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>

<style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Segoe UI', sans-serif;
}

body{
  background:#f4f6f9;
  color:#333;
}

/* PAGE WRAPPER */
.page-wrapper{
  padding:60px 20px;
  max-width:1100px;
  margin:auto;
}

/* HERO SECTION */
.about-hero{
  text-align:center;
  margin-bottom:50px;
}

.about-hero h1{
  font-size:36px;
  margin-bottom:15px;
  color:#111;
}

.about-hero p{
  font-size:16px;
  color:#555;
  max-width:700px;
  margin:auto;
  line-height:1.6;
}

/* CONTENT SECTION */
.about-section{
  display:flex;
  gap:40px;
  margin-bottom:50px;
}

.about-box{
  flex:1;
  background:#fff;
  padding:30px;
  border-radius:14px;
  box-shadow:0 8px 20px rgba(0,0,0,0.06);
}

.about-box h2{
  margin-bottom:15px;
  color:#111827;
}

.about-box p{
  font-size:14px;
  line-height:1.6;
  color:#555;
}

/* FEATURES */
.features{
  text-align:center;
}

.features h2{
  margin-bottom:30px;
}

.feature-grid{
  display:flex;
  gap:25px;
  justify-content:center;
  flex-wrap:wrap;
}

.feature-card{
  width:250px;
  background:#ffffff;
  padding:25px;
  border-radius:12px;
  box-shadow:0 6px 15px rgba(0,0,0,0.05);
  transition:0.3s;
}

.feature-card:hover{
  transform:translateY(-5px);
}

.feature-card h3{
  margin-bottom:10px;
  color:#111;
}

.feature-card p{
  font-size:13px;
  color:#666;
}

/* RESPONSIVE */
@media(max-width:900px){
  .about-section{
    flex-direction:column;
  }
}

@media(max-width:600px){
  .about-hero h1{
    font-size:26px;
  }

  .about-hero p{
    font-size:14px;
  }
}
</style>
</head>

<body>

<!-- Include Header -->
<jsp:include page="header.jsp"/>

<div class="page-wrapper">

  <!-- HERO -->
  <div class="about-hero">
    <h1>About Our System</h1>
    <p>
      Our User Management System is designed to simplify user registration,
      data management, and administrative control with a secure and modern interface.
    </p>
  </div>

  <!-- MISSION & VISION -->
  <div class="about-section">

    <div class="about-box">
      <h2>Our Mission</h2>
      <p>
        To provide a simple, secure, and efficient platform for managing
        user information using modern web technologies like Java, JSP,
        and database integration.
      </p>
    </div>

    <div class="about-box">
      <h2>Our Vision</h2>
      <p>
        To build scalable and professional management systems that
        enhance productivity and ensure data security for organizations.
      </p>
    </div>

  </div>

  <!-- FEATURES -->
  <div class="features">
    <h2>Why Choose Us?</h2>

    <div class="feature-grid">

      <div class="feature-card">
        <h3>🔐 Secure</h3>
        <p>Data protection with proper backend validation and session management.</p>
      </div>

      <div class="feature-card">
        <h3>⚡ Fast</h3>
        <p>Optimized database operations for smooth performance.</p>
      </div>

      <div class="feature-card">
        <h3>📱 Responsive</h3>
        <p>Works seamlessly across mobile, tablet, and desktop devices.</p>
      </div>

      <div class="feature-card">
        <h3>🛠 Easy Management</h3>
        <p>Simple CRUD operations for efficient user handling.</p>
      </div>

    </div>
  </div>

</div>

</body>
</html>