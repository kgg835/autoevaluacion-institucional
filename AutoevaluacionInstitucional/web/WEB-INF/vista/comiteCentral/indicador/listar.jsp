<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
    $(function(){
        var actual = "";
        $("a.delete").click(function(e){
            e.preventDefault();
            actual = $(this).attr("id"); 
            $('#myModalElimI').modal();
            
        })
    })
 </script> 
<div class="hero-unit">
    <div class="row">
        <div class="span10">
            <br/>
            <h2>Listado de  Indicadores</h2>
            <c:choose>
                <c:when test="${listindicadores.size() != 0}">

                    <table class="table table-striped table-bordered table-condensed">
                        <thead>
                        <th>Nombre</th>
                        <th>Descripci&oacute;n</th>
                        <th></th>
                        </thead>
                        <tbody>
                            <c:forEach items="${listindicadores}" var="row" varStatus="iter">
                                <tr>    
                                    <td>   
                                        <c:out value="${row.nombre}"/>
                                    </td>
                                    <td>
                                        <c:out value="${row.descripcion}"/>
                                    </td>
                                    <td class="action icon16">
                                        <a title="Editar" href="#editarIndicador&${row.id}" class="edit"></a>
                                        <a title="Eliminar" class="delete" href=""></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    No Existen Indicadores Registrados en el Sistema.
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>    