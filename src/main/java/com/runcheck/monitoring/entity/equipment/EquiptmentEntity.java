package com.runcheck.monitoring.entity.equipment;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "equiptment", schema = "runcheck", catalog = "")
public class EquiptmentEntity {
    private Integer id;
    private String equipmentName;
    private String equipmentNo;
    private Date begindate;
    private Date lastdate;
    private String runtime;
    private String oiltype;
//    private Double slope;
    private String companyName;


    /*    @OneToMany(fetch=FetchType.EAGER)
        @JoinColumn(name = "eqId")
        private List<EquipmentwarnEntity> eqwarns;*/
/*    @OneToMany(fetch=FetchType.EAGER)
    @JoinColumn(name = "eqId")
    private List<ElementsEntity> elements;*/
    @Id
    @GeneratedValue
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "equipmentName")
    public String getEquipmentName() {
        return equipmentName;
    }

    public void setEquipmentName(String equipmentName) {
        this.equipmentName = equipmentName;
    }

    @Basic
    @Column(name = "equipmentNo")
    public String getEquipmentNo() {
        return equipmentNo;
    }

    public void setEquipmentNo(String equipmentNo) {
        this.equipmentNo = equipmentNo;
    }
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    public Date getBegindate() {
        return begindate;
    }

    public void setBegindate(Date begindate) {
        this.begindate = begindate;
    }
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @Temporal(TemporalType.DATE)
    public Date getLastdate() {
        return lastdate;
    }

    public void setLastdate(Date lastdate) {
        this.lastdate = lastdate;
    }

    @Basic
    @Column(name = "runtime")
    public String getRuntime() {
        return runtime;
    }

    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    @Basic
    @Column(name = "oiltype")
    public String getOiltype() {
        return oiltype;
    }

    public void setOiltype(String oiltype) {
        this.oiltype = oiltype;
    }

  /*  @Basic
    @Column(name = "slope")
    public Double getSlope() {
        return slope;
    }

    public void setSlope(Double slope) {
        this.slope = slope;
    }*/

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EquiptmentEntity that = (EquiptmentEntity) o;
        return id == that.id &&
                Objects.equals(equipmentName, that.equipmentName) &&
                Objects.equals(equipmentNo, that.equipmentNo) &&
                Objects.equals(begindate, that.begindate) &&
                Objects.equals(lastdate, that.lastdate) &&
                Objects.equals(runtime, that.runtime) &&
                Objects.equals(oiltype, that.oiltype);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, equipmentName, equipmentNo, begindate, lastdate, runtime, oiltype);
    }
    @Basic
    @Column(name = "companyName")
    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    /*public List<EquipmentwarnEntity> getEqwarns() {
        return eqwarns;
    }

    public void setEqwarns(List<EquipmentwarnEntity> eqwarns) {
        this.eqwarns = eqwarns;
    }*/
/*
    public List<ElementsEntity> getElements() {
        return elements;
    }

    public void setElements(List<ElementsEntity> elements) {
        this.elements = elements;
    }*/

}
