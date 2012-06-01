<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.metadata.js"></script>
<link type="text/css" rel="stylesheet" href="jQuery/dragDrop/fcbklistselection.css" />
<script type="text/javascript" src="jQuery/dragDrop/fcbklistselection.js"></script>
<script type="text/javascript" language="JavaScript">
    $(document).ready(function() {
        //id(ul id),width,height(element height),row(elements in row)        
        $.fcbkListSelection("#fcbklist","600","50","3");       
        
        $("#formCrearFact").validate({
            submitHandler: function(){
                $.ajax({
                    type: 'POST',
                    url: "<%=request.getContextPath()%>/formController2?action=crearFactorCC",
                    data: $("#formCrearFact").serialize(),
                    success: function(){
                        location = "<%=request.getContextPath()%>/#listarFactores"
                    } //fin success
                }); //fin $.ajax    
            }
        });
        var removeValue = function(obj){
        var randid = obj.find("[type=hidden]").attr("randid");
        var inputid = elem.attr('id') + "_values";
        if ($("#" + inputid).length != 0) {
            try {
                eval("json = " + $("#" + inputid).val() + ";");
                var string = "{";
                $.each(json, function(i, item){
                    if (i && item && i != randid) {
                        string += "\"" + i + "\":\"" + item + "\",";
                    }
                });
                //remove last ,
                if (string.length > 2) {
                    string = string.substr(0, (string.length - 1));
                    string += "}"
                }
                else {
                    string = "";
                }
                $("#" + inputid).val(string);
            } 
            catch (e) {                
            }
        }
    }
        $("button[type='reset']").click(function(){
        elem = $("#fcbklist");
            $.each(elem.children("li").children(".fcbklist_item"), function(i, obj){
                obj = $(obj);
                
                if (obj.hasClass("itemselected")) {
                    obj.find("input:hidden").val("0");
                    $("#view_selected_count").text(parseInt($("#view_selected_count").text(), 10) - 1);
                    obj.parents("li").removeAttr("addedid");
                    removeValue(obj);
                }
                obj.removeClass("itemselected");
                obj.parents("li").removeClass("liselected");
            })
        })
    
    });         
</script>
<br>
<div class="hero-unit">
    <div class="row">
        <div class="span8">
            <form id="formCrearFact" class="form-horizontal" method="post">
                <fieldset>
                    <legend>Crear Factor</legend>
                    <div class="control-group">
                        <label for="nombre"  class="control-label">Nombre</label>
                        <div class="controls">
                            <input type="text" name="nombre" id="nombre" class="input-xlarge {required:true}" value=""/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label for="descripcion" class="control-label">Asignar Caracteristicas</label>
                        <div class="controls">
                            <ul id="fcbklist">
                                <c:forEach items="${listcaracteristicas}" var="row" varStatus="iter">
                                    <li>
                                        <strong>${row.nombre}</strong><br/> 
                                        <span class="fcbkitem_text">${row.nombre}</span>
                                        <input name="C${row.id}" type="hidden" value="0"/>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>



                    <div class="form-actions">
                        <button class="btn btn-primary" type="submit">Crear Factor</button>
                        <button class="btn" type="reset">Cancelar</button>
                    </div>
                </fieldset>
            </form>
        </div><!--/span-->        
    </div><!--/row-->    
</div>