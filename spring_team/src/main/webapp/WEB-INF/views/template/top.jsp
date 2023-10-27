<%@ page contentType="text/html; charset=UTF-8" %> 
<%  String root = request.getContextPath(); %> 
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MVC-Test</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  </head>
  <body>
    <!--상단메뉴-->
    <div class="container-fluid bg-light p-5">
		<div class="col-sm-6"><h1 style='margin:4rem'>SPRING_TEAM: 231027 😜</h1></div> 
    </div>
      <ul class="nav nav-tabs bg-light">
        <li class="nav-item">
          <a class="nav-link active" href="/">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a
            class="nav-link dropdown-toggle"
            data-bs-toggle="dropdown"
            href="#">Team</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="/team/list">팀 목록</a></li>
            <li><a class="dropdown-item" href="/team/create">팀 등록</a></li>
          </ul>
        </li>
      </ul>
    </div>