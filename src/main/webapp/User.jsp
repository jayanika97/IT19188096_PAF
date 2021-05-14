<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>user Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/main.js"></script>
</head>
<body>


<div class="container">

	<div style="margin-top: 1px;">

	<h1 class="m-3"><center>User Management</center></h1>
 
<div class="row">
<div class="col-12" id="colUser">
<form id="formUser" name="formUser" method="post" action="User.jsp" >

 UserTd: 
<input id="userId" name="userId" type="text" 
 class="form-control form-control-sm">
<br> User name: 
<input id="userName" name="userName" type="text" 
 class="form-control form-control-sm">
<br> User age: 
<input id="age" name="age" type="text" 
 class="form-control form-control-sm">
<br> User gender:
<input id="gender" name="sex" type="text" 
 class="form-control form-control-sm">
<br> User Email:
<input id="email" name="email" type="text" 
 class="form-control form-control-sm">
 <br>
<input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
<input type="hidden" id="hidUserIDSave" name="hidUserIDSave" value="">
</form>

<div id="alertSuccess" class ="alert alert success">
 <%
    out.print(session.getAttribute("statusMsg"));
  %>
</div>
<div id="alertError" class="alert alert-danger"></div>

<br>
<div id="divUserGrid">
 <%
    User userObj=new User();
    out.print(userObj.readuser());
 %>
 </div>
</div>
</div>
</div>
</body>
</html>
 