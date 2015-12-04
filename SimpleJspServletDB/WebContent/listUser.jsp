<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<title>Mostrar todos usuários</title>
</head>
<div class='container-fluid'>
<body>
    <table class='table table-bordered'>
        <thead>
            <tr>
                <th>Id</th>
                <th>Primeiro Nome</th>
                <th>Último Nome</th>
                <th>Data de Nascimento</th>
                <th>Email</th>
                <th colspan=2>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.userid}" /></td>
                    <td><c:out value="${user.firstName}" /></td>
                    <td><c:out value="${user.lastName}" /></td>
                    <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a></td>
                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>"><span class="glyphicon glyphicon-erase" aria-hidden="true"></span></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="UserController?action=insert"><span class="glyphicon glyphicon-plus" aria-hidden="true">Usúario</a></p>
</div>
</body>
</html>