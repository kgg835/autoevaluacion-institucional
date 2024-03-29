/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Oscar
 */
@Entity
@Table(name = "muestraegresado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Muestraegresado.findAll", query = "SELECT m FROM Muestraegresado m"),
    @NamedQuery(name = "Muestraegresado.findById", query = "SELECT m FROM Muestraegresado m WHERE m.id = :id"),
    @NamedQuery(name = "Muestraegresado.findByConglomerado", query = "SELECT m FROM Muestraegresado m WHERE m.conglomerado = :conglomerado"),
    @NamedQuery(name = "Muestraegresado.findByMetodo", query = "SELECT m FROM Muestraegresado m WHERE m.metodo = :metodo")})
public class Muestraegresado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "conglomerado")
    private String conglomerado;
    @Column(name = "metodo")
    private String metodo;
    @JoinColumn(name = "egresado_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Egresado egresadoId;
    @JoinColumn(name = "muestra_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Muestra muestraId;

    public Muestraegresado() {
    }

    public Muestraegresado(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getConglomerado() {
        return conglomerado;
    }

    public void setConglomerado(String conglomerado) {
        this.conglomerado = conglomerado;
    }

    public String getMetodo() {
        return metodo;
    }

    public void setMetodo(String metodo) {
        this.metodo = metodo;
    }

    public Egresado getEgresadoId() {
        return egresadoId;
    }

    public void setEgresadoId(Egresado egresadoId) {
        this.egresadoId = egresadoId;
    }

    public Muestra getMuestraId() {
        return muestraId;
    }

    public void setMuestraId(Muestra muestraId) {
        this.muestraId = muestraId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Muestraegresado)) {
            return false;
        }
        Muestraegresado other = (Muestraegresado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Muestraegresado[ id=" + id + " ]";
    }
    
}
