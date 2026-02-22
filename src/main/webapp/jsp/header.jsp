<%@page import="com.example.demo.bean.User"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<style>
*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family:'Segoe UI', sans-serif;
}

.profile-icon{
    width: 42px;
    height: 42px;
    background: linear-gradient(135deg, #667eea, #764ba2);
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    font-size: 18px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}



.header{
  background:#111;
  color:#fff;
  padding:15px 30px;
  display:flex;
  justify-content:space-between;
  align-items:center;
  position:relative;
}

.logo{
  font-size:20px;
  font-weight:bold;
}

.nav{
  display:flex;
  gap:25px;
  align-items:center;
}

.nav a{
  color:#fff;
  text-decoration:none;
  font-size:14px;
  transition:0.3s;
}

.nav a:hover{
  color:#00d4ff;
}

.btn-login{
  padding:6px 14px;
  background:#00d4ff;
  color:#111 !important;
  border-radius:4px;
  font-weight:bold;
}

.btn-login:hover{
  background:#fff;
}

/* HAMBURGER */
.menu-toggle{
  display:none;
  font-size:24px;
  cursor:pointer;
}

/* MOBILE */
@media(max-width:768px){

  .menu-toggle{
    display:block;
  }

  .nav{
    position:absolute;
    top:60px;
    right:0;
    background:#111;
    width:100%;
    flex-direction:column;
    display:none;
    padding:20px 0;
  }

  .nav a{
    padding:10px 0;
    width:100%;
    text-align:center;
  }

  .nav.active{
    display:flex;
  }
  
}
</style>


<%User u = (User) session.getAttribute("userlogindata"); %>
<div class="header">
  <div class="logo">UMS System</div>

  <div class="menu-toggle" onclick="toggleMenu()">☰</div>

  <div class="nav" id="navMenu">
    <a href="/">Home</a>
    <a href="/about">About</a>
    <a href="/registerform">Register User</a>
    <a href="/show">Manage Users</a>

    <a href="/contact">Contact</a>
    
    <%if(u != null){%>
    	<a href="#">Welcome <%=u.getFname() %></a>
    	<a href="/logout" class="btn-login">Logout</a>
    <%}else{ %>
    	<a href="#">Welcome User</a>
	    <a href="/login" class="btn-login">Login</a>
	    
	  <%} %>
	  
	 <div class="profile-icon">
 A
</div>
	 
  </div>
</div>

<script>
function toggleMenu(){
  var menu = document.getElementById("navMenu");
  menu.classList.toggle("active");
}
</script>