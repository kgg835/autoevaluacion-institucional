/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model.actions.autoevaluacionInstitucional;

import controller.sqlController;
import entity.Proceso;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import model.Action;

/**
 *
 * @author Arturo
 */
public class infoNumericaAI implements Action {

    public String procesar(HttpServletRequest request)
            throws IOException, ServletException {

        HttpSession session = request.getSession();

        sqlController conSql = new sqlController();
        Proceso proceso = (Proceso) session.getAttribute("proceso");
        int idProceso = proceso.getId();
        String bd = (String) session.getAttribute("bd");
        String url = "/WEB-INF/vista/autoevaluacionInstitucional/proceso/documentalNumerica/evaluarNumerica.jsp";


        Result rs2 = null;

        //Cambiar proceso
        String sql = "select indicador.id, indicador.nombre, numericadocumental.documento, numericadocumental.responsable, numericadocumental.medio, numericadocumental.lugar, numericadocumental.evaluacion, numericadocumental.accion from numericadocumental inner join indicador on numericadocumental.indicador_id = indicador.id inner join instrumentohasindicador on indicador.id = instrumentohasindicador.indicador_id where instrumentohasindicador.instrumento_id = 3 and numericadocumental.proceso_id = '" + idProceso + "'";
        rs2 = conSql.CargarSql2(sql, bd);

        Result rs = null;
        rs = conSql.CargarSql2("Select indicador.id, indicador.codigo from indicador inner join instrumentohasindicador on indicador.id = instrumentohasindicador.indicador_id where instrumentohasindicador.instrumento_id = 3 order by indicador.id", bd);
        session.setAttribute("auxInfoNumerica", 1);


        if (rs2.getRowCount() > 0) {
            session.setAttribute("auxInfoNumerica", 1);
            session.setAttribute("evaluarcionNumerica", rs2);
            session.setAttribute("indicadoresNumerica", rs);
        } else {
            session.setAttribute("auxInfoNumerica", 0);
            session.setAttribute("indicadoresNumerica", rs);
            conSql.cerrarConexion();

        }

        conSql.cerrarConexion();

        return url;
    }
}