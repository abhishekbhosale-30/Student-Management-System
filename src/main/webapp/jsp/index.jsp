<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Management System</title>

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

/* HERO SECTION */
.hero{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:80px 60px;
  flex-wrap:wrap;
}

.hero-text{
  flex:1;
  min-width:280px;
}

.hero-text h1{
  font-size:40px;
  margin-bottom:15px;
  color:#111;
}

.hero-text p{
  margin-bottom:20px;
  color:#555;
  line-height:1.6;
}

.hero-buttons a{
  text-decoration:none;
  padding:12px 22px;
  border-radius:6px;
  margin-right:10px;
  font-weight:bold;
  display:inline-block;
  transition:0.3s;
}

.btn-primary{
  background:#111;
  color:#fff;
}

.btn-primary:hover{
  background:#00d4ff;
}

.btn-secondary{
  background:#00d4ff;
  color:#111;
}

.btn-secondary:hover{
  background:#111;
  color:#fff;
}

/* HERO IMAGE */
.hero-image{
  flex:1;
  text-align:center;
  min-width:280px;
}

.hero-image img{
  width:100%;
  max-width:400px;
}

/* FEATURES */
.features{
  padding:60px 40px;
  text-align:center;
  background:#fff;
}

.features h2{
  margin-bottom:40px;
  font-size:28px;
  color:#111;
}

.feature-container{
  display:flex;
  justify-content:center;
  flex-wrap:wrap;
  gap:25px;
}

.card{
  background:#f4f6f9;
  padding:25px;
  width:260px;
  border-radius:10px;
  transition:0.3s;
}

.card:hover{
  transform:translateY(-5px);
  box-shadow:0 6px 15px rgba(0,0,0,0.1);
}

.card h3{
  margin-bottom:10px;
}

.card p{
  font-size:14px;
  color:#555;
}

/* RESPONSIVE */
@media(max-width:992px){
  .hero{
    padding:60px 30px;
  }

  .hero-text h1{
    font-size:32px;
  }
}

@media(max-width:768px){

  .hero{
    flex-direction:column;
    text-align:center;
    padding:40px 20px;
  }

  .hero-text h1{
    font-size:26px;
  }

  .hero-buttons a{
    margin-bottom:10px;
  }
}
</style>
</head>

<body>

<!-- Include Header -->
<jsp:include page="header.jsp"/>

<!-- HERO SECTION -->
<div class="hero">

  <div class="hero-text">
    <h1>Manage Your Users Smartly</h1>
    <p>
      A powerful and secure system to register, update,
      and manage users efficiently using Java & Database.
    </p>

    <div class="hero-buttons">
      <a href="/registerform" class="btn-primary">Get Started</a>
      <a href="/show" class="btn-secondary">View Users</a>
    </div>
  </div>

  <div class="hero-image">
    <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png"
         alt="User Illustration">
  </div>

</div>

<!-- FEATURES SECTION -->
<div class="features">
  <h2>System Features</h2>

  <div class="feature-container">

    <div class="card">
      <h3>➕ Add Users</h3>
      <p>Register new users with secure data storage.</p>
    </div>

    <div class="card">
      <h3>✏ Update & Delete</h3>
      <p>Edit or remove records easily anytime.</p>
    </div>

    <div class="card">
      <h3>📋 View Records</h3>
      <p>Display all users in organized format.</p>
    </div>

  </div>
</div>

<!-- Include Footer -->
<jsp:include page="footer.jsp"/>

</body>
</html>