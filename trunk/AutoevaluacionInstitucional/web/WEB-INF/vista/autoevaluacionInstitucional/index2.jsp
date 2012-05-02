<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" 
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="language" content="en" />
        <title>Autoevaluacion Institucional</title>
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/layout2.css" />
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/footer.css" />
        <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/jQuery/dragDrop/fcbklistselection.css" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.grid.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.pager.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui-1.8.5.custom.css" type="text/css" media="screen" charset="utf-8" />
        <!--<link rel="stylesheet" href="<%=request.getContextPath()%>/css/examples.css" type="text/css" media="screen" charset="utf-8" />-->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick.columnpicker.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/slick-default-theme.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styl.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" media="screen" charset="utf-8" />

        <script type="text/javascript" src="<%=request.getContextPath()%>/bootstrap/js/jquery.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/jQuery/dragDrop/fcbklistselection.js"></script>
        <script type="text/javascript"src="<%=request.getContextPath()%>/script/jquery.validate.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.metadata.js"></script>




        <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le styles -->
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap-responsive.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/css/docs.css" rel="stylesheet"/>
        <link href="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.css" rel="stylesheet"/>


        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.model.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.event.drag-2.0.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.editors.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.grid.js"></script>

        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.pager.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.columnpicker.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/slick.remotemodel.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jjmenu.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/pubsub.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.ba-hashchange.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-ui.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery-layout.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/script/jquery.hotkeys.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/google-code-prettify/prettify.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-transition.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-dropdown.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-scrollspy.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-alert.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-modal.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-tooltip.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-popover.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-collapse.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap-button.js"></script>

        <style type="text/css">

            .slick-cell .options a {
                cursor: pointer;
                display: block;
                float: left;
                height: 18px;
                width: 18px;
            }

            .options {
                background: none repeat scroll 0 0 transparent;
                float: right;
                height: 18px;
                margin: 2px;
                position: relative;
                width: auto !important;
                z-index: 1;
            }

            a.more {
                visibility: hidden;
            }

            .slick-row:hover a.more {
                visibility: visible;
                background-position: 0 -54px;
            }   
            .slick-row:hover a.more:hover {
                background-position: -18px -54px;
            }

            div.selected:hover a.more, div.selected.hover a.more {
                background-position: 0 -198px;
                visibility: visible;
            }
            .grid-canvas div.selected .slick-cell a.more:hover, .grid-canvas div.selected .slick-cell a.hover  {
                background-position: -36px -198px;
            }


            .grid-canvas .slick-cell .rowOption {
                background: url("/AutoevaluacionInstitucional/css/images/songRow_18px.png") repeat scroll 0 0 transparent;
            }

            .cell-effort-driven {
                text-align: center;

            }

            .cell-selection {
                border-right-color: silver;
                border-right-style: solid;
                background: #f5f5f5;
                color: gray;
                text-align: right;
                font-size: 10px;
            }

            .slick-row.selected .cell-selection {
                background-color: transparent; /* show default selected row background */
            }
        </style>
        <style type="text/css">
            .ui-layout-north {
                /* Drop-Down */
                bottom:		auto;
                margin:		0;
                padding-bottom: 30px;
            }

            .ui-layout-center{
                overflow: auto;
            }
            .ui-layout-west{
                padding-right: 0;
            }
            .inner-layout-north {
                /* Drop-Down */
                bottom:		auto;
                margin:		0;

            }
            .middle-center, .inner-center{
                padding: 0px;   

            }


        </style>
        <script type="text/javascript">
            
      
             
            $(document).ready(function() {
                location ="/AutoevaluacionInstitucional/#inicio"; 
                
                $("ul.nav-list li a").click(function(event){
                    $(".nav li").removeClass("active");
                    $(this).parent().siblings().removeClass("active");
                    $(this).parent().siblings().children("a").children("i").removeClass("icon-white");
                    $(this).parent().addClass("active");
                    $(this).children("i").addClass("icon-white");
                    location = $(this).attr("href");
                })
                                                  
                $(".ui-layout-center").scroll(function(){
                    // If has not activated (has no attribute "data-top"

                    if($(".subnav").length > 0){
                        if (!$('.subnav').attr('data-top')) {
                            // If already fixed, then do nothing
                            if ($('.subnav').hasClass('subnav-fixed')) return;
                            // Remember top position
                            var offset = $('.subnav').offset()
                            
                            $('.subnav').attr('data-top', offset.top);
                        }

                        if ($('.subnav').attr('data-top') - $('.subnav').outerHeight() <= $(this).scrollTop())
                        {
                            $('.subnav').addClass('subnav-fixed');
                                                          
                        }  
                        else
                            $('.subnav').removeClass('subnav-fixed');
                                               
                    }
                                               
                                            
                });
            
            });
                
        </script>
        <script type="text/javascript">
           
            var myLayout, innerLayout, middleLayout;
            $(document).ready( function() {
                                    
                myLayout = $('body').layout({
                    //	enable showOverflow on west-pane so CSS popups will overlap north pane
                    west__size:			270
                    ,   center__paneSelector:  ".ui-layout-center"
                    ,   north__paneClass:    "ui-layout-pane"
                    ,   closable:				true	// pane can open & close


                    //	reference only - these options are NOT required because 'true' is the default
                    ,	closable:				true	// pane can open & close
                    ,	resizable:				false	// when open, pane can be resized 
                    ,	slidable:				false	// when closed, pane can 'slide' open over other panes - closes on mouse-out
                        
                    ,       north__slidable:		false	// OVERRIDE the pane-default of 'slidable=true'
                    ,	north__spacing_open:	0		// no resizer-bar when open (zero height)
                    ,	south__resizable:		false	// OVERRIDE the pane-default of 'resizable=true'
                    ,	south__spacing_open:	0		// no resizer-bar when open (zero height)
                    ,	west__spacing_open:	1		// no resizer-bar when open (zero height)
                    ,       south__paneClass:               "ui-layout-pane"
                  	
                    ,	west__minSize:			200
                    ,	west__maxSize:			350
                                                
                    ,       center__onresize: function (name, el, state, opts, Layout) { 
                        $.publish("set_grid_height", [state.innerHeight]);
                        $.publish("set_grid_width", [state.innerWidth]);
                    }
			
                     
                });
                
                myLayout.allowOverflow('north'); 
                // setTimeout( myLayout.resizeAll, 1000 ); /* allow time for browser to re-render with new theme */
               
               
               
               
                
            }); //fin de document.ready
                
           
        </script>
        <script type="text/javascript">
                     
            $(function()
            {
                
                //CERRAR PROCESO
                $('#myModalCP2b1').click(function(){
                   
                    $("div.ui-layout-center").empty();
                    $.ajax({ 
                        type: "POST", 
                        url: "<%=request.getContextPath()%>/formController?action=CerrarProcesoAI",
                        success: function(data) 
                        {
                            $("#menu").load("<%=request.getContextPath()%>/ControllerAI?action=menuAI");
                                                                            
                            location = "<%=request.getContextPath()%>/#listarProcesos";                                
                                                             
                        } //fin success
                    }); //fin del $.ajax*/
                });
                
                $('#myModalCP2b2').click(function(){
                    location = "<%=request.getContextPath()%>/#detalleProceso"; 
                });
            
             
                
                //INICIAR PROCESO
                $('#myModalIP2b1').click(function(){
         
                    $("div.ui-layout-center").empty();
                    $.ajax({ 
                        type: "POST", 
                        url: "<%=request.getContextPath()%>/formController?action=IniciarProcesoAI", 
                        success: function(data) 
                        { 
                            $.ajax({
                                type: 'POST',
                                url: "<%=request.getContextPath()%>/ControllerAI?action=validar1",
                                success: function(data){
                                    $("#center").html(data);
                                }
                            })                              
                        } //fin success
                    }); //fin del $.ajax    });
                });
                
                $('#myModalIP2b2').click(function(){
                    location = "<%=request.getContextPath()%>/#detalleProceso"; 
                });
            
            
            
                $(window).hashchange(function(){
                      
                    var hash = location.hash;
                
                    if(hash.indexOf("PonderacionFactores")!=-1){
                       
                    }
                                                
                    if(hash.indexOf("PonderacionCaracteristicas")!=-1 || hash.indexOf("PonderacionFactores")!=-1 || hash=="" || hash.indexOf("error")!=-1 || hash.indexOf("collapse")!=-1){
                                                  
                    }else{
                                                    
                        if(hash=="#CerrarSesion"){
                            $.post('<%=request.getContextPath()%>/ControllerAI?action=CerrarSesion',
                            function(data) {
                                location = "<%=request.getContextPath()%>/";
                                 
                            });
                                                        
                        }
                        if(hash=="#inicio"){
                            $("div.ui-layout-center").empty();
                            $("div.ui-layout-center").append(
                            "<div class='span10' style='text-align: justify'>"
                                +"<div class='hero-unit'>"
                                +"<h1>Autoevaluaci&oacute;n Institucional!</h1>"
                                +"<p>El consejo Academico aprob&oacute; el Modelo de Autoevaluaci&oacute;n con fines de Acreditaci&oacute;n Institucional de la Universidad de Cartagena; Instrumento de gesti&oacute;n que permite la revision sistematica de los procesos acad&eacute;micos y administrativos para  la elaboracion y puesta en marcha de planes de mejoramiento y de mantenimiento que den respuesta a su politica de calidad.</p>"
                                +"<p><a class='btn btn-primary btn-large'>Leer M&aacute;s »</a></p>"
                                +"</div>"
                                +"<div class='row-fluid'>"
                                +"<div class='span4'>"
                                +"<h2>Marco Normativo</h2>"
                                +"<p>los lineamientos de Autoevaluaci&oacute;n para la Acreditaci&oacute;n Institucional, el Sistema de Aseguramiento de la Calidad en Colombia, y el Modelo de Autoevaluacion Institucional con fines de acreditacion de la  Universidad de Cartagena se fundamentan en.. . </p>"
                                +"<p><a href='#' class='btn'>Ver detalles »</a></p>"
                                +"</div><!--/span-->"
                                +"<div class='span4'>"
                                +"<h2>Definiciones</h2>"
                                +"<p>lorem ipsum id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>"
                                +"<p><a href='#' class='btn'>Ver detalles »</a></p>"
                                +"</div>"
                                +"<div class='span4'>"
                                +"<h2>Objetivos</h2>"
                                +"<p>Mantener informado a la comunidad academica sobre el proceso de autoevaluacion institucional. </p>"
                                +"<p><a href='#' class='btn'>Ver detalles »</a></p>"
                                +"</div><!--/span-->"
                                +"</div><!--/row-->"
                                +"</div>");
                            $("ul.nav-list li").removeClass("active");
                            $(".nav-collapse .nav >li:eq(0)").addClass("active");
                            $("ul.nav-list li").siblings().children("a").children("i").removeClass("icon-white");
                            return false;
                        }
                                                    
                        /* if(grid){
                            grid.destroy(); 
                        
                        }*/
                                               
           
                        if(hash != "#detalleProceso" && hash !="#listarPonderacionFactor" && hash !="#listarPonderacionCaracteristica" && hash !="#listarProcesos")
                        {
                        
                            $.unsubscribe("set_grid_width");
                            $.unsubscribe("set_grid_height");    
                            if(middleLayout){
                                                      
                                middleLayout.destroy();
                                window[ "middleLayout" ] = null;
        
                            } 
                            if(innerLayout){
                                innerLayout.destroy();
                                window[ "innerLayout" ] = null;    
                            }
                        
                            var auxAsignarC1;
                        
                            selectedRowIds = [];
                        
                
                            $("div.ui-layout-center").empty();
                            var url3 = "<%=request.getContextPath()%>/"+hash;
                        
                            if(hash == "#PonderacionFactor"){
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                          
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                       
                                        $("div.ui-layout-center").append(data);
                                        setTimeout(function(){
                                            $("div.ui-layout-center").scrollspy();   
                                        }, 500);
                                                                    
                                        $("div.ui-layout-center").scrollspy('refresh');
                                        //{offset:80}                            


                                        $("#formPondeFa").validate({
                                            
                                            errorElement: "em"
                                            ,
                                            highlight: function(element, errorClass) {
                                                $(element).parent("td").children("div").addClass("in");
                                                $(element).parent("td").children("div").show();
                                            },
                                            unhighlight: function(element, errorClass, validClass) {
                                                $(element).parent("td").children("div").removeClass("in");
                                                $(element).parent("td").children("div").hide();
                                            },    
                                            errorPlacement: function(error, element) {
                                                error.appendTo($(element).parent("td").children("div"));
                                            },    
                                             
                                            rules: {
                                                field: {
                                                    required: true,
                                                    number: true
                                                }
                                            },
                                            submitHandler: function() {
                                                var suma=0;                                    
                                                $("input[name^='ponderacion']").each(function(){
                                                    suma+=Number($(this).val());
            
         
                                                });
                                                if(suma==100){
                                                    setTimeout(function () {
                                                        $.ajax({
                                                            type: 'POST',
                                                            url: "<%=request.getContextPath()%>/formController?action=asignarPonderacionFactorAIp",
                                                            data: $("#formPondeFa").serialize(),
                                                            success: function(){
                                                                //alert("Ponderación de Factores Actualizada con Exito!");
                                                                $('#myModalF').modal();
                                                                $('#myModalF').on('hidden', function () {
                                                                    location = "<%=request.getContextPath()%>/#listarPonderacionFactor";
                                                                })
                                                            } //fin success
                                            
                                                        }); //fin $.ajax
                                                    }, 400);
                                                } else{
                                                
                                                    $(".alert-error").show();
                                                    $("ul.nav-pills li:eq(0) a").trigger("click");
                                                }
                                                    
                                                    
                                            } //fin submitHandler
                                                
                                        });
                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if(hash == "#PonderacionCaracteristica"){
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                          
                      
                                                        
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    { 
                                                                 
                                        $("div.ui-layout-center").append(data);
                                        setTimeout(function(){
                                            $("div.ui-layout-center").scrollspy();   
                                        }, 500);
                                        $("div.ui-layout-center").scrollspy('refresh');
                                        //{offset:80}   
                                    } //fin success
                                }); //fin del $.ajax
                         
                                                        
                            }
                            else if(hash == "#AsignacionEncuestas"){
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                          
                      
                                var jaja34 = function(){
                                    $("div.ui-layout-center").empty();
                                    $.ajax({ 
                                        type: "POST", 
                                        url: url3, 
                                        success: function(data) 
                                        {
                                       
                                            $("div.ui-layout-center").append(data);
                                    
                                            $("#formAsigEnc").submit(function(event){
                                                event.preventDefault();
                                             
                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=asignarEncuestasAIp",
                                                    data: $("#formAsigEnc").serialize(),
                                                    success: function(){
                                                                                    
                                                        $("#resultados").hide();
                                                        $("#select option:eq(0)").attr("selected","selected");
                                                        $('#myModalE').modal();  
                                                                                    
                                                                                   
                                                    } //fin success
                                            
                                                }); //fin $.ajax
                                            }); //fin submit
                                        
                                     
                             
                                        } //fin success
                                    }); //fin del $.ajax
                         
                                } //fin jaja34  
                                jaja34(); 
                       

                            }
                            else if(hash == "#AsignacionMuestra"){
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                          
                                var jaja34 = function(){
                                    $("div.ui-layout-center").empty();
                                    $.ajax({ 
                                        type: "POST", 
                                        url: url3, 
                                        success: function(data) 
                                        {
                                       
                                            $("div.ui-layout-center").append(data);
                                            /*
                                            $("#formAsigMue").submit(function(event){
                                                event.preventDefault();
                                             
                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=asignarMuestraAIp",
                                                    data: $("#formAsigMue").serialize(),
                                                    success: function(){
                                                                                    
                                                        $("#resultados2").hide();
                                                        $("#select option:eq(0)").attr("selected","selected");
                                                        $('#myModalM').modal();  
                                                                                    
                                                                                   
                                                    } //fin success
                                            
                                                }); //fin $.ajax
                                            }); //fin submit
                                             */
                                        
                                     
                             
                                        } //fin success
                                    }); //fin del $.ajax
                         
                                } //fin jaja34  
                                jaja34(); 
                       

                            }
                            else if(hash == "#CrearProceso"){
                                var a = 0;
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        setTimeout(function(){},200);
                                        $("#formCrearProc").validate({
                                            submitHandler: function(){
                                        
                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=crearProcesoAIp",
                                                    data: $("#formCrearProc").serialize(),
                                                    success: function(){
                                                        $('#myModalP1').modal(); 
                                                                               
                                                                                                         
                                                    } //fin success
                                                }); //fin $.ajax    
                                            }
                                        });
                                        
                                       
                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if(hash == "#CrearProceso1"){
                                var a = 0;
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                                $("div.ui-layout-center").empty();
                                $.ajax({ 
                                    type: "POST", 
                                    url: url3, 
                                    success: function(data) 
                                    {
                                        $("div.ui-layout-center").append(data);
                                        setTimeout(function(){},200);
                                        $("#formCrearProc").validate({
                                            
                                            submitHandler: function() {
                                                $.ajax({
                                                    type: 'POST',
                                                    url: "<%=request.getContextPath()%>/formController?action=crearProcesoAIp",
                                                    data: $("#formCrearProc").serialize(),
                                                    beforeSend: function(){
                                                        $('#myModalLoading').modal();   
                                                        $("#myModalLoading .bar").css("width","50%");
                                                    },
                                                    complete:function(){
                                                        $("#myModalLoading .bar").css("width","100%");
                                                        setTimeout(function(){
                                                            $('#myModalLoading').modal("hide");
                                                        },400);
                                                    },
                                                    success: function(){
                                                        
                                                        setTimeout(function(){
                                                            $('#myModalP').modal(); 
                                                                                    
                                                                                
                                                        },2000);
                                                                                
                                                        $('#myModalP').on('hidden', function () {
                                                            $("#menu").load("<%=request.getContextPath()%>/ControllerAI?action=menuAI");
                                                            setTimeout(function(){
                                                                location = '/AutoevaluacionInstitucional/';
                                                            }, 200);
                                                        });
                                                    } //fin success
                                                }); //fin $.ajax   
                                            }   
                                        });
                                    } //fin success
                                }); //fin del $.ajax
                            }
                            else if(hash == "#IniciarProceso"){
                                $('#myModalIP2').modal();
                            }  
                            else if(hash == "#CerrarProceso"){
                                $('#myModalCP2').modal();
                            }
                            else {
                                url3 = url3.replace('#', "ControllerAI?action=")+"AI";
                                $("div.ui-layout-center").load(url3);
                            }
                        }else{
                        
                            if(hash == "#detalleProceso")
                            {
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>//jsonController?ejecucion=detalleProceso",
                                    success: function(){
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=detalleProceso",
                                            success: function(data){
                                                $("#center").html(data);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if(hash == "#listarProcesos")
                            {               
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>//jsonController?ejecucion=listarProcesos",
                                    success: function(){
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarProceso",
                                            success: function(data){
                                                $("#center").html(data);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if(hash == "#listarPonderacionFactor"){
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>//jsonController?ejecucion=listarPonderacionFactor",
                                    success: function(){
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarPonderacionFactor",
                                            success: function(data){
                                                $("#center").html(data);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                            if(hash == "#listarPonderacionCaracteristica"){
                                $.ajax({
                                    type: 'POST',
                                    url: "<%=request.getContextPath()%>//jsonController?ejecucion=listarPonderacionCaracteristica",
                                    success: function(){
                                        $.ajax({
                                            type: 'POST',
                                            url: "<%=request.getContextPath()%>/ControllerAI?action=listarPonderacionCaracteristica",
                                            success: function(data){
                                                $("#center").html(data);
                                            }
                                        })
                                    } //fin success
                                }); //fin $.ajax
                            }
                        } //fin del else
                    }
                });  
             
            });  //fin del function   
                    
                        
           
            //setTimeout(function () { $.jstree._focused().select_node("#detalle"); }, 1000);
          
        </script> 
    </head>
    <body>
        <div class="ui-layout-north ui-widget-content">
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid" style="width: auto;">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="#">Autoevaluacion Institucional</a>
                        <div class="nav-collapse">
                            <ul class="nav">
                                <li class="active"><a href="<%=request.getContextPath()%>/#inicio">Inicio</a></li>
                                <li><a href="#">Contacto</a></li>
                            </ul>

                            <ul class="nav pull-right">
                                <li class="divider-vertical"></li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown">${representante.personaId.nombre}<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Perfil</a></li>
                                        <li><a href="#">Cambiar Contrase&ntilde;a</a></li>
                                        <li class="divider"></li>
                                        <li><a href="<%=request.getContextPath()%>/#CerrarSesion">Cerrar Sesion</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div><!-- /.nav-collapse -->
                    </div>
                </div><!-- /navbar-inner -->
            </div><!-- /navbar -->

        </div><!--North-->

        <div class="ui-layout-south ui-widget-content"> 
            <div class="contenedor_footer fondo_footer" id="footer">
                <div class="links">
                    <a href="#"><span>Acerca de</span></a>

                    <a href="#"><span>Derechos de Autor</span></a>

                    <a href="#"><span>Ayuda</span></a>
                </div>
            </div>
        </div><!--South-->

        <div id="center" class="ui-layout-center">

            <div class="span10" style="text-align: justify">
                <div class="hero-unit">
                    <h1>Autoevaluaci&oacute;n Institucional!</h1>
                    <p>El consejo Academico aprob&oacute; el Modelo de Autoevaluaci&oacute;n con fines de Acreditaci&oacute;n Institucional de la Universidad de Cartagena; Instrumento de gesti&oacute;n que permite la revision sistematica de los procesos acad&eacute;micos y administrativos para  la elaboracion y puesta en marcha de planes de mejoramiento y de mantenimiento que den respuesta a su politica de calidad.</p>
                    <p><a class="btn btn-primary btn-large">Leer M&aacute;s »</a></p>
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <h2>Marco Normativo</h2>
                        <p>los lineamientos de Autoevaluaci&oacute;n para la Acreditaci&oacute;n Institucional, el Sistema de Aseguramiento de la Calidad en Colombia, y el Modelo de Autoevaluacion Institucional con fines de acreditacion de la  Universidad de Cartagena se fundamentan en.. . </p>
                        <p><a href="#" class="btn">Ver detalles »</a></p>
                    </div><!--/span-->
                    <div class="span4">
                        <h2>Definiciones</h2>
                        <p>lorem ipsum id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                        <p><a href="#" class="btn">Ver detalles »</a></p>
                    </div>
                    <div class="span4">
                        <h2>Objetivos</h2>
                        <p>Mantener informado a la comunidad academica sobre el proceso de autoevaluacion institucional. </p>
                        <p><a href="#" class="btn">Ver detalles »</a></p>
                    </div><!--/span-->


                </div><!--/row-->

            </div>      

        </div><!--/Center-->

        <div id="ui-layout-west" class="ui-layout-west">
            <div class="ui-layout-content">
                <div id="menu" style="padding: 8px 0pt;" class="well">
                    <ul class="nav nav-list">  
                        <c:choose>
                            <c:when test="${aux_index2 == 1}">
                                <c:choose>
                                    <c:when test="${aux2_index2 == 1}">
                                        <li class="nav-header">Proceso en configuración</li>
                                        <li><a href="<%=request.getContextPath()%>/#CrearProceso"><i class="icon-th"></i> Detalle Proceso</a></li>
                                        <li><a id="ponderacionFact" href="<%=request.getContextPath()%>/#PonderacionFactor"><i class="icon-tag"></i> Ponderacion Factores</a></li>
                                        <li><a id="ponderacionCara" href="<%=request.getContextPath()%>/#PonderacionCaracteristica"><i class="icon-tags"></i> Ponderacion Caracteristicas</a></li>
                                        <li><a  id="asignarMuestra"  href="<%=request.getContextPath()%>/#AsignacionMuestra"><i class="icon-glass"></i> Asignar Muestra</a></li>
                                        <li><a id="asignarEncuesta"  href="<%=request.getContextPath()%>/#AsignacionEncuestas"><i class="icon-question-sign"></i> Asignacion Encuestas</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#IniciarProceso"><i class="icon-play"></i> Iniciar Proceso</a></li> 
                                    </c:when>
                                    <c:otherwise>
                                        <li class="nav-header">Proceso en ejecución</li>
                                        <li class="divider"></li>
                                        <li class="nav-header">Información del Proceso</li>
                                        <li><a id="detalle" href="<%=request.getContextPath()%>/#detalleProceso"><i class="icon-th"></i> Detalle Proceso</a></li>
                                        <li><a id="ponderacionFact" href="<%=request.getContextPath()%>/#listarPonderacionFactor"><i class="icon-tag"></i> Ponderacion Factores</a></li>
                                        <li><a id="ponderacionCara" href="<%=request.getContextPath()%>/#listarPonderacionCaracteristica"><i class="icon-tags"></i> Ponderacion Caracteristicas</a></li>
                                        <li><a id="asignarEncuesta"  href="<%=request.getContextPath()%>/#AsignacionEncuestas"><i class="icon-question-sign"></i> Asignacion Encuestas</a></li>
                                        <li class="nav-header">Configuración del Proceso</li>
                                        <li><a  id="asignarMuestra"  href="<%=request.getContextPath()%>/#AsignacionMuestra"><i class="icon-glass"></i> Asignar Muestra</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#CerrarProceso"><i class="icon-trash"></i> Finalizar Proceso</a>
                                        </c:otherwise>
                                    </c:choose>
                                    <li class="nav-header">Procesos Anteriores</li>
                                    <li><a id="listarProcesos" href="<%=request.getContextPath()%>/#listarProcesos"><i class="icon-th-list"></i> Listar Procesos</a></li>        
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-header">Procesos</li>
                                    <li><a href="#CrearProceso1"><i class="icon-plus"></i>Proceso Nuevo</a></li>
                                    <li><a id="listarProcesos" href="<%=request.getContextPath()%>/#listarProcesos"><i class="icon-th-list"></i> Listar Procesos</a></li>
                                </c:otherwise>
                            </c:choose>
                    </ul>

                </div>
            </div>
            <div align="center">
                <%--    <img src="<%=request.getContextPath()%>/css/Captura.png" style="width: 224px; height: 80px"></img>--%>
                <img src="<%=request.getContextPath()%>/css/Sin título-3.png" style="width: 224px; height: 80px"></img>
            </div>
        </div><!--/West-->

        <div class="modal hide fade" id="myModalF">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderación de factores.</h4>
                <br>
                    <p>La ponderación de factores ha sido satisfactoriamente asignada</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalF-->
        <div class="modal hide fade" id="myModalC">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderación de características.</h4>
                <br>
                    <p>La ponderación de características ha sido satisfactoriamente asignada</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalC-->
        <div class="modal hide fade" id="myModalE">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Asignación de Encuestas.</h4>
                <br>
                    <p>Las encuestas han sido asignadas para la fuente seleccionada.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalE-->
        <div class="modal hide fade" id="myModalP">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Nuevo Proceso.</h4>
                <br>
                    <p>Se ha creado un nuevo proceso de autevaluación</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalP-->
        <div class="modal hide fade" id="myModalP1">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Nuevo Proceso.</h4>
                <br>
                    <p>Proceso de autevaluación actualizado con éxito!</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalP1-->
        <div class="modal hide fade" id="myModalM">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Información</h3>
            </div>
            <div class="modal-body">
                <h4>Asignación de Muestra.</h4>
                <br>
                    <p>La muestra ha sido asignada para la fuente seleccionada!</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalM-->
        <div class="modal hide fade" id="myModalLoading">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Creando Proceso</h3>
            </div>
            <div class="modal-body">
                <div class="progress progress-info
                     progress-striped active">
                    <div class="bar"
                         style="width: 5%;"></div>
                </div>
            </div>

        </div><!--/ModalLoading-->
        <div class="modal hide fade" id="myModalIP">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Atención!</h3>
            </div>
            <div class="modal-body">
                <h4>Iniciar Proceso de Autoevaluación Institucional.</h4>
                <br>
                    <p>Debe configurar todo el proceso para continuar.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div>
        <div class="modal hide fade" id="myModalIP2">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Atención!</h3>
            </div>
            <div class="modal-body">
                <h4>Iniciar Proceso de Autoevaluación Institucional.</h4>
                <br>
                    <p>Esta seguro que desea ejecutar el Proceso?. Tenga en cuenta que sólo la asignación de muestra será editable al ejecutar el proceso.</p>
            </div>
            <div class="modal-footer">
                <a id="myModalIP2b2" class="btn btn-secundary" data-dismiss="modal" href="#">Cancelar</a>
                <a id="myModalIP2b1" class="btn btn-primary" data-dismiss="modal" href="#">Iniciar Proceso</a>
            </div>
        </div>



        <div class="modal hide fade" id="myModalCP2">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Atención!</h3>
            </div>
            <div class="modal-body">
                <h4>Finalizar Proceso de Autoevaluación Institucional.</h4>
                <br>
                    <p>Esta seguro que desea finalizar el Proceso?. Tenga en cuenta que esta acción no se podrá deshacer.</p>
            </div>
            <div class="modal-footer">
                <a id="myModalCP2b2" class="btn btn-secundary" data-dismiss="modal" href="#">Cancelar</a>
                <a id="myModalCP2b1" class="btn btn-primary" data-dismiss="modal" href="#">Finalizar Proceso</a>
            </div>
        </div>



        <!--/ModalIP-->
        <div class="modal hide fade" id="myModalC1">
            <div class="modal-header">
                <a data-dismiss="modal" class="close">×</a>
                <h3>Atención!</h3>
            </div>
            <div class="modal-body">
                <h4>Ponderación de Características.</h4>
                <br>
                    <p>Debe asignar primero la poderación de factores para proceder a las asignación de ponderación de características.</p>
            </div>
            <div class="modal-footer">
                <a class="btn btn-primary" data-dismiss="modal" href="#">Cerrar</a>
            </div>
        </div><!--/ModalC1-->
    </body>
</html> 
