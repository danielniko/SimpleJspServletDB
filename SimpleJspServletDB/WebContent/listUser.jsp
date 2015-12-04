<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link type="text/css" href="css/ui-lightness/jquery-ui.custom.css" rel="stylesheet" />
        <title>Mostrar todos usuários</title>
        <script>
                    $(document).ready(function() { $('#tabela').dataTable({ "bJQueryUI": true, "sPaginationType": "full_numbers", "sDom": '<"H"Tlfr>t<"F"ip>', "oTableTools": { "sSwfPath": "../../js/DataTables-1.9.4/extras/TableTools/media/swf/ copy_csv_xls_pdf.swf", "aButtons": [ { "sExtends": "xls", "sButtonText": "Exportar para Excel", "sTitle": "Usuarios", "mColumns": [0, 1, 2, 3] }, { "sExtends": "pdf", "sButtonText": "Exportar para PDF", "sTitle": "Usuarios, "sPdfOrientation": "landscape", "mColumns": [0, 1, 2, 3] } ] }, "oLanguage": { "sLengthMenu": "Mostrar _MENU_ registros por página", "sZeroRecords": "Nenhum registro encontrado", "sInfo": "Mostrando _START_ / _END_ de _TOTAL_ registro(s)", "sInfoEmpty": "Mostrando 0 / 0 de 0 registros", "sInfoFiltered": "(filtrado de _MAX_ registros)", "sSearch": "Pesquisar: ", "oPaginate": { "sFirst": "Início", "sPrevious": "Anterior", "sNext": "Próximo", "sLast": "Último" } }, "aaSorting": [[0, 'desc']], "aoColumnDefs": [ {"sType": "num - html", "aTargets": [0]} ] }); });
        </script>
    </head>
    <body>
        <div class='container-fluid'>
            <div class='container-fluid' class=" col-xs-12 col-sm-6 col-md-6">
                <table class='table table-bordered' id="tabela">
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
        </div>
    </body>
</html>