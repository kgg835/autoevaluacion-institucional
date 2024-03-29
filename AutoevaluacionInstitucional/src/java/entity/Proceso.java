/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Oscar
 */
@Entity
@Table(name = "proceso")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Proceso.findAll", query = "SELECT p FROM Proceso p"),
    @NamedQuery(name = "Proceso.findById", query = "SELECT p FROM Proceso p WHERE p.id = :id"),
    @NamedQuery(name = "Proceso.findByFechainicio", query = "SELECT p FROM Proceso p WHERE p.fechainicio = :fechainicio"),
    @NamedQuery(name = "Proceso.findByFechacierre", query = "SELECT p FROM Proceso p WHERE p.fechacierre = :fechacierre"),
    @NamedQuery(name = "Proceso.findByDescripcion", query = "SELECT p FROM Proceso p WHERE p.descripcion = :descripcion")})
public class Proceso implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "fechainicio")
    private String fechainicio;
    @Column(name = "fechacierre")
    private String fechacierre;
    @Column(name = "descripcion")
    private String descripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Ponderacioncaracteristica> ponderacioncaracteristicaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Muestra> muestraList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Ponderacionfactor> ponderacionfactorList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Asignacionencuesta> asignacionencuestaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Encabezado> encabezadoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "procesoId")
    private List<Numericadocumental> numericadocumentalList;
    @JoinColumn(name = "programa_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Programa programaId;

    public Proceso() {
    }

    public Proceso(Integer id) {
        this.id = id;
    }

    public Proceso(Integer id, String fechainicio) {
        this.id = id;
        this.fechainicio = fechainicio;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(String fechainicio) {
        this.fechainicio = fechainicio;
    }

    public String getFechacierre() {
        return fechacierre;
    }

    public void setFechacierre(String fechacierre) {
        this.fechacierre = fechacierre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @XmlTransient
    public List<Ponderacioncaracteristica> getPonderacioncaracteristicaList() {
        return ponderacioncaracteristicaList;
    }

    public void setPonderacioncaracteristicaList(List<Ponderacioncaracteristica> ponderacioncaracteristicaList) {
        this.ponderacioncaracteristicaList = ponderacioncaracteristicaList;
    }

    @XmlTransient
    public List<Muestra> getMuestraList() {
        return muestraList;
    }

    public void setMuestraList(List<Muestra> muestraList) {
        this.muestraList = muestraList;
    }

    @XmlTransient
    public List<Ponderacionfactor> getPonderacionfactorList() {
        return ponderacionfactorList;
    }

    public void setPonderacionfactorList(List<Ponderacionfactor> ponderacionfactorList) {
        this.ponderacionfactorList = ponderacionfactorList;
    }

    @XmlTransient
    public List<Asignacionencuesta> getAsignacionencuestaList() {
        return asignacionencuestaList;
    }

    public void setAsignacionencuestaList(List<Asignacionencuesta> asignacionencuestaList) {
        this.asignacionencuestaList = asignacionencuestaList;
    }

    @XmlTransient
    public List<Encabezado> getEncabezadoList() {
        return encabezadoList;
    }

    public void setEncabezadoList(List<Encabezado> encabezadoList) {
        this.encabezadoList = encabezadoList;
    }

    @XmlTransient
    public List<Numericadocumental> getNumericadocumentalList() {
        return numericadocumentalList;
    }

    public void setNumericadocumentalList(List<Numericadocumental> numericadocumentalList) {
        this.numericadocumentalList = numericadocumentalList;
    }

    public Programa getProgramaId() {
        return programaId;
    }

    public void setProgramaId(Programa programaId) {
        this.programaId = programaId;
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
        if (!(object instanceof Proceso)) {
            return false;
        }
        Proceso other = (Proceso) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Proceso[ id=" + id + " ]";
    }
    
}
