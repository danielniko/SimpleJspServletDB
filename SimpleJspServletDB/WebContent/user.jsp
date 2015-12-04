<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css"
              href="css/ui-lightness/jquery-ui.custom.css" rel="stylesheet" />
            <script type="text/javascript" src="js/jquery.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    
        <title>Adicionar novo Usuário</title>
    </head>
    <body>
        <script>
            $(function () {
                $('input[name=dob]').datepicker();
            });
        </script>
        <div class='container-fluid'>
            <div class="col-xs-12 col-sm-6 col-md-6" >
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
                                   value="<c:out value="${user.email}" />" /> <br /> 
                    <button type="submit" class="btn btn-default">Cadastrar</button>
                </form>
                    <p><a href="index.jsp"><span class="glyphicon glyphicon-backward" aria-hidden="true">Lista de Usuários</a></p>
            </div>
        </div>
    </body>
</html>