<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.bean.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Show Users</title>

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

/* PAGE CONTENT */
.page-content{
  padding:30px 15px;
}

/* HEADING */
h2{
  text-align:center;
  margin-bottom:25px;
  font-size:28px;
  color:#111;
}

/* TABLE CONTAINER */
.table-container{
  max-width:1100px;
  margin:auto;
  background:#ffffff;
  padding:25px;
  border-radius:14px;
  box-shadow:0 10px 25px rgba(0,0,0,0.08);
}

/* ===== DESKTOP TABLE ===== */
.responsive-table{
  width:100%;
  border-collapse:collapse;
}

.responsive-table thead{
  background:#111827;
  color:#fff;
}

.responsive-table th,
.responsive-table td{
  padding:14px;
  text-align:left;
  font-size:14px;
}

.responsive-table tbody tr{
  border-bottom:1px solid #eee;
}

.responsive-table tbody tr:nth-child(even){
  background:#f9fafb;
}

.responsive-table tbody tr:hover{
  background:#eef2ff;
  transition:0.2s;
}

/* ===== BUTTONS ===== */
.action-box{
  display:flex;
  gap:8px;
  flex-wrap:wrap;
}

.btn{
  padding:6px 12px;
  border-radius:6px;
  font-size:13px;
  text-decoration:none;
  font-weight:500;
  transition:0.2s;
}

.delete{
  background:#fee2e2;
  color:#b91c1c;
}

.delete:hover{
  background:#b91c1c;
  color:#fff;
}

.update{
  background:#dbeafe;
  color:#1d4ed8;
}

.update:hover{
  background:#1d4ed8;
  color:#fff;
}

/* ===== MOBILE CARD VIEW ===== */
@media(max-width:768px){

  .responsive-table,
  .responsive-table thead,
  .responsive-table tbody,
  .responsive-table th,
  .responsive-table td,
  .responsive-table tr{
    display:block;
  }

  .responsive-table thead{
    display:none;
  }

  .responsive-table tr{
    background:#ffffff;
    margin-bottom:18px;
    padding:15px;
    border-radius:12px;
    box-shadow:0 6px 15px rgba(0,0,0,0.06);
    border-left:5px solid #1d4ed8;
  }

  .responsive-table td{
    display:flex;
    justify-content:space-between;
    padding:8px 0;
    border:none;
    font-size:14px;
  }

  .responsive-table td::before{
    content: attr(data-label);
    font-weight:600;
    color:#111;
  }

  .action-box{
    justify-content:flex-end;
  }
}
</style>
</head>

<body>

<!-- Responsive Header -->
<jsp:include page="header.jsp"/>

<div class="page-content">

<%
List<User> list = (List<User>) session.getAttribute("list");
%>

<h2>User List</h2>

<div class="table-container">

<table class="responsive-table">

<thead>
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>Email</th>
  <th>Phone</th>
  <th>Country</th>
  <th>Action</th>
</tr>
</thead>

<tbody>

<% if(list != null){
   for(User u : list){ %>

<tr>
  <td data-label="ID"><%=u.getId()%></td>
  <td data-label="Name"><%=u.getFname()%> <%=u.getLname()%></td>
  <td data-label="Email"><%=u.getEmail()%></td>
  <td data-label="Phone"><%=u.getPhone()%></td>
  <td data-label="Country"><%=u.getCountry()%></td>

  <td data-label="Action">
    <div class="action-box">
      <a href="delete?user_id=<%=u.getId()%>" class="btn delete">Delete</a>
      <a href="showdatabyid?user_id=<%=u.getId()%>" class="btn update">Update</a>
    </div>
  </td>
</tr>

<% } } %>

</tbody>

</table>

</div>

</div>

</body>
</html>