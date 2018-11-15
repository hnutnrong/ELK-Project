/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elk.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Administrator
 */
@Entity
@Table(name = "ORDERLIST")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Orderlist.findAll", query = "SELECT o FROM Orderlist o")
    , @NamedQuery(name = "Orderlist.findByOrderno", query = "SELECT o FROM Orderlist o WHERE o.orderno = :orderno")
    , @NamedQuery(name = "Orderlist.findByOrderdate", query = "SELECT o FROM Orderlist o WHERE o.orderdate = :orderdate")
    , @NamedQuery(name = "Orderlist.findByShippingmethod", query = "SELECT o FROM Orderlist o WHERE o.shippingmethod = :shippingmethod")})
public class Orderlist implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ORDERNO")
    private String orderno;
    @Size(max = 100)
    @Column(name = "ORDERDATE")
    private String orderdate;
    @Size(max = 100)
    @Column(name = "SHIPPINGMETHOD")
    private String shippingmethod;

    public Orderlist() {
    }

    public Orderlist(String orderno) {
        this.orderno = orderno;
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }

    public String getShippingmethod() {
        return shippingmethod;
    }

    public void setShippingmethod(String shippingmethod) {
        this.shippingmethod = shippingmethod;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderno != null ? orderno.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Orderlist)) {
            return false;
        }
        Orderlist other = (Orderlist) object;
        if ((this.orderno == null && other.orderno != null) || (this.orderno != null && !this.orderno.equals(other.orderno))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "elk.model.Orderlist[ orderno=" + orderno + " ]";
    }
    
}
