package com.runcheck.monitoring.entity.equipment;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

@Entity
@Table(name = "elements", schema = "runcheck", catalog = "")
public class ElementsEntity {
    private int id;
    private Integer elements;

   /* private Integer fe;
    private Integer cu;
    private Integer al;
    private Integer cr;
    private Integer cd;
    private Integer ag;
    private Integer ti;
    private Integer sn;
    private Integer pb;
    private Integer zn;
    private Integer mg;
    private Integer ca;
    private Integer magnetic;*/
    private Date collecttime;
    private Date checktime;
    /*@ManyToOne()
    @JoinColumn(name = "sqid")*/
    private Integer sqid;
//    private String eqname;
/*@ManyToOne()
@JoinColumn(name = "eqid")*/
    private Integer eqid;
    private String suggest;
    @ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.LAZY,optional=true )
    @JoinColumn(name = "sqid")
    private EquipmentwarnEntity equipentWarn;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

  /*  @Basic
    @Column(name = "fe")
    public Integer getFe() {
        return fe;
    }

    public void setFe(Integer fe) {
        this.fe = fe;
    }

    @Basic
    @Column(name = "cu")
    public Integer getCu() {
        return cu;
    }

    public void setCu(Integer cu) {
        this.cu = cu;
    }

    @Basic
    @Column(name = "al")
    public Integer getAl() {
        return al;
    }

    public void setAl(Integer al) {
        this.al = al;
    }

    @Basic
    @Column(name = "cr")
    public Integer getCr() {
        return cr;
    }

    public void setCr(Integer cr) {
        this.cr = cr;
    }

    @Basic
    @Column(name = "cd")
    public Integer getCd() {
        return cd;
    }

    public void setCd(Integer cd) {
        this.cd = cd;
    }

    @Basic
    @Column(name = "ag")
    public Integer getAg() {
        return ag;
    }

    public void setAg(Integer ag) {
        this.ag = ag;
    }

    @Basic
    @Column(name = "ti")
    public Integer getTi() {
        return ti;
    }

    public void setTi(Integer ti) {
        this.ti = ti;
    }

    @Basic
    @Column(name = "sn")
    public Integer getSn() {
        return sn;
    }

    public void setSn(Integer sn) {
        this.sn = sn;
    }

    @Basic
    @Column(name = "pb")
    public Integer getPb() {
        return pb;
    }

    public void setPb(Integer pb) {
        this.pb = pb;
    }

    @Basic
    @Column(name = "zn")
    public Integer getZn() {
        return zn;
    }

    public void setZn(Integer zn) {
        this.zn = zn;
    }

    @Basic
    @Column(name = "mg")
    public Integer getMg() {
        return mg;
    }

    public void setMg(Integer mg) {
        this.mg = mg;
    }

    @Basic
    @Column(name = "ca")
    public Integer getCa() {
        return ca;
    }

    public void setCa(Integer ca) {
        this.ca = ca;
    }

    @Basic
    @Column(name = "magnetic")
    public Integer getMagnetic() {
        return magnetic;
    }

    public void setMagnetic(Integer magnetic) {
        this.magnetic = magnetic;
    }*/

    @Basic
    @Column(name = "collecttime")
    public Date getCollecttime() {
        return collecttime;
    }

    public void setCollecttime(Date collecttime) {
        this.collecttime = collecttime;
    }

    @Basic
    @Column(name = "checktime")
    public Date getChecktime() {
        return checktime;
    }

    public void setChecktime(Date checktime) {
        this.checktime = checktime;
    }

   /* @Basic
    @Column(name = "oiltype")
    public String getOiltype() {
        return oiltype;
    }

    public void setOiltype(String oiltype) {
        this.oiltype = oiltype;
    }

    @Basic
    @Column(name = "eqname")
    public String getEqname() {
        return eqname;
    }

    public void setEqname(String eqname) {
        this.eqname = eqname;
    }
*/

    public Integer getEqid() {
        return eqid;
    }

    public void setEqid(Integer eqid) {
        this.eqid = eqid;
    }

    @Basic
    @Column(name = "suggest")
    public String getSuggest() {
        return suggest;
    }

    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }

/*    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ElementsEntity that = (ElementsEntity) o;
        return id == that.id &&
                Objects.equals(fe, that.fe) &&
                Objects.equals(cu, that.cu) &&
                Objects.equals(al, that.al) &&
                Objects.equals(cr, that.cr) &&
                Objects.equals(cd, that.cd) &&
                Objects.equals(ag, that.ag) &&
                Objects.equals(ti, that.ti) &&
                Objects.equals(sn, that.sn) &&
                Objects.equals(pb, that.pb) &&
                Objects.equals(zn, that.zn) &&
                Objects.equals(mg, that.mg) &&
                Objects.equals(ca, that.ca) &&
                Objects.equals(magnetic, that.magnetic) &&
                Objects.equals(collecttime, that.collecttime) &&
                Objects.equals(checktime, that.checktime) &&
                Objects.equals(oiltype, that.oiltype) &&
                Objects.equals(eqname, that.eqname) &&
                Objects.equals(eqid, that.eqid) &&
                Objects.equals(suggest, that.suggest);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, fe, cu, al, cr, cd, ag, ti, sn, pb, zn, mg, ca, magnetic, collecttime, checktime, oiltype, eqname, eqid, suggest);
    }*/
@Basic
@Column(name = "elements")
    public Integer getElements() {
        return elements;
    }

    public void setElements(Integer elements) {
        this.elements = elements;
    }


    public Integer getSqid() {
        return sqid;
    }

    public void setSqid(Integer sqid) {
        this.sqid = sqid;
    }
}
