<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
    $(document).ready(function(){
        $("a[href *='collapseOne']").click(function(){
            if($("#collapseTwo").hasClass("in")){
                $("#collapseTwo").collapse("hide");
            }
           
        });
        $("a[href *='collapseTwo']").click(function(){
            if($("#collapseOne").hasClass("in")){
                $("#collapseOne").collapse("hide");
            }
            
        });
    });
   
</script>
<div class="accordion-group">
    <div class="accordion-heading">
        <a href="#collapseTwo" data-parent="#resultados4" data-toggle="collapse" class="accordion-toggle">
            Muestra Generada Para la Fuente Seleccionada
        </a>

    </div>
    <div class="accordion-body collapse" id="collapseTwo" style="height: 0px;">
        <div class="accordion-inner">
            <table class="table table-striped table-bordered table-condensed">
                <thead>
                <th>Cedula</th>
                <th>Código</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Semestre</th>
                </thead>
                <tbody>
                    <c:forEach items="${selectorAsignarM2.rowsByIndex}" var="item" varStatus="iter">
                        <tr>
                            <td>${item[0]}</td>
                            <td>${item[1]}</td>
                            <td>${item[2]}</td>
                            <td>${item[3]}</td>
                            <td>${item[4]}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>






