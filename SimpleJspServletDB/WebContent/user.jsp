<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Adicionar novo Usuário</title>
</head>
<body>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>
<div class='container-fluid'>
    <form class='form-group' method="POST" action='UserController' name="frmAddUser">
     <input  type="hidden" readonly="readonly" name="userid" class="form-control"
            value="<c:out value="${user.userid}" />" /> <br /> 
        Primeiro Nome : <input
            type="text" name="firstName" class="form-control"
            value="<c:out value="${user.firstName}" />" /> <br /> 
        Último Nome : <input
            type="text" name="lastName" class="form-control"
            value="<c:out value="${user.lastName}" />" /> <br /> 
        Data de Nascimento : <input
            type="text" name="dob" class="form-control"
            value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" /> <br /> 
        Email : <input type="text" name="email" class="form-control"
            value="<c:out value="${user.email}" />" /> <br /> <input
            type="submit" value="Submit" />
    </form>
</div>
</body>
</html>