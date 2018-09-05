package com.runcheck.monitoring.entity.equipment;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "equipmentwarn", schema = "runcheck", catalog = "")
public class EquipmentwarnEntity {
    private int id;
    private Integer setting;
    private Double slope;
  /*  private Integer checkFe;
    private Integer checkCu;
    private Integer checkAl;
    private Integer checkCr;
    private Integer checkCd;
    private Integer checkAg;
    private Integer checkTi;
    private Integer checkSn;
    private Integer checkPb;
    private Integer checkZn;
    private Integer checkMg;
    private Integer checkCa;
    private Integer checklittleFe;*/
/*  @ManyToOne()
  @JoinColumn(name = "eqid")*/
    private Integer eqId;
   /* private Double slopeFe;
    private Double slopeCu;
    private Double slopeAl;
    private Double slopeCr;
    private Double slopeCd;
    private Double slopeAg;
    private Double slopeTi;
    private Double slopeSn;
    private Double slopePb;
    private Double slopeZn;
    private Double slopeMg;
    private Double slopeCa;
    private Double littleFeslope;*/
    @Id
    @GeneratedValue
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

   /* @Basic
    @Column(name = "checkFe")
    public Integer getCheckFe() {
        return checkFe;
    }

    public void setCheckFe(Integer checkFe) {
        this.checkFe = checkFe;
    }

    @Basic
    @Column(name = "checkCu")
    public Integer getCheckCu() {
        return checkCu;
    }

    public void setCheckCu(Integer checkCu) {
        this.checkCu = checkCu;
    }

    @Basic
    @Column(name = "checkAl")
    public Integer getCheckAl() {
        return checkAl;
    }

    public void setCheckAl(Integer checkAl) {
        this.checkAl = checkAl;
    }

    @Basic
    @Column(name = "checkCr")
    public Integer getCheckCr() {
        return checkCr;
    }

    public void setCheckCr(Integer checkCr) {
        this.checkCr = checkCr;
    }

    @Basic
    @Column(name = "checkCd")
    public Integer getCheckCd() {
        return checkCd;
    }

    public void setCheckCd(Integer checkCd) {
        this.checkCd = checkCd;
    }

    @Basic
    @Column(name = "checkAg")
    public Integer getCheckAg() {
        return checkAg;
    }

    public void setCheckAg(Integer checkAg) {
        this.checkAg = checkAg;
    }

    @Basic
    @Column(name = "checkTi")
    public Integer getCheckTi() {
        return checkTi;
    }

    public void setCheckTi(Integer checkTi) {
        this.checkTi = checkTi;
    }

    @Basic
    @Column(name = "checkSn")
    public Integer getCheckSn() {
        return checkSn;
    }

    public void setCheckSn(Integer checkSn) {
        this.checkSn = checkSn;
    }

    @Basic
    @Column(name = "checkPb")
    public Integer getCheckPb() {
        return checkPb;
    }

    public void setCheckPb(Integer checkPb) {
        this.checkPb = checkPb;
    }

    @Basic
    @Column(name = "checkZn")
    public Integer getCheckZn() {
        return checkZn;
    }

    public void setCheckZn(Integer checkZn) {
        this.checkZn = checkZn;
    }

    @Basic
    @Column(name = "checkMg")
    public Integer getCheckMg() {
        return checkMg;
    }

    public void setCheckMg(Integer checkMg) {
        this.checkMg = checkMg;
    }

    @Basic
    @Column(name = "checkCa")
    public Integer getCheckCa() {
        return checkCa;
    }

    public void setCheckCa(Integer checkCa) {
        this.checkCa = checkCa;
    }
*/
    public Integer getEqId() {
        return eqId;
    }

    public void setEqId(Integer eqId) {
        this.eqId = eqId;
    }

   /* @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EquipmentwarnEntity that = (EquipmentwarnEntity) o;
        return id == that.id &&
                Objects.equals(checkFe, that.checkFe) &&
                Objects.equals(checkCu, that.checkCu) &&
                Objects.equals(checkAl, that.checkAl) &&
                Objects.equals(checkCr, that.checkCr) &&
                Objects.equals(checkCd, that.checkCd) &&
                Objects.equals(checkAg, that.checkAg) &&
                Objects.equals(checkTi, that.checkTi) &&
                Objects.equals(checkSn, that.checkSn) &&
                Objects.equals(checkPb, that.checkPb) &&
                Objects.equals(checkZn, that.checkZn) &&
                Objects.equals(checkMg, that.checkMg) &&
                Objects.equals(checkCa, that.checkCa) &&
                Objects.equals(eqId, that.eqId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, checkFe, checkCu, checkAl, checkCr, checkCd, checkAg, checkTi, checkSn, checkPb, checkZn, checkMg, checkCa, eqId);
    }
    @Basic
    @Column(name = "checklittleFe")
    public Integer getChecklittleFe() {
        return checklittleFe;
    }

    public void setChecklittleFe(Integer checklittleFe) {
        this.checklittleFe = checklittleFe;
    }
    @Basic
    @Column(name = "slopeFe")
    public Double getSlopeFe() {
        return slopeFe;
    }

    public void setSlopeFe(Double slopeFe) {
        this.slopeFe = slopeFe;
    }
    @Basic
    @Column(name = "slopeCu")
    public Double getSlopeCu() {
        return slopeCu;
    }

    public void setSlopeCu(Double slopeCu) {
        this.slopeCu = slopeCu;
    }
    @Basic
    @Column(name = "slopeAl")
    public Double getSlopeAl() {
        return slopeAl;
    }

    public void setSlopeAl(Double slopeAl) {
        this.slopeAl = slopeAl;
    }
    @Basic
    @Column(name = "slopeCr")
    public Double getSlopeCr() {
        return slopeCr;
    }

    public void setSlopeCr(Double slopeCr) {
        this.slopeCr = slopeCr;
    }
    @Basic
    @Column(name = "slopeCd")
    public Double getSlopeCd() {
        return slopeCd;
    }

    public void setSlopeCd(Double slopeCd) {
        this.slopeCd = slopeCd;
    }
    @Basic
    @Column(name = "slopeAg")
    public Double getSlopeAg() {
        return slopeAg;
    }

    public void setSlopeAg(Double slopeAg) {
        this.slopeAg = slopeAg;
    }
    @Basic
    @Column(name = "slopeTi")
    public Double getSlopeTi() {
        return slopeTi;
    }

    public void setSlopeTi(Double slopeTi) {
        this.slopeTi = slopeTi;
    }
    @Basic
    @Column(name = "slopeSn")
    public Double getSlopeSn() {
        return slopeSn;
    }

    public void setSlopeSn(Double slopeSn) {
        this.slopeSn = slopeSn;
    }
    @Basic
    @Column(name = "slopePb")
    public Double getSlopePb() {
        return slopePb;
    }

    public void setSlopePb(Double slopePb) {
        this.slopePb = slopePb;
    }
    @Basic
    @Column(name = "slopeZn")
    public Double getSlopeZn() {
        return slopeZn;
    }

    public void setSlopeZn(Double slopeZn) {
        this.slopeZn = slopeZn;
    }
    @Basic
    @Column(name = "slopeMg")
    public Double getSlopeMg() {
        return slopeMg;
    }

    public void setSlopeMg(Double slopeMg) {
        this.slopeMg = slopeMg;
    }
    @Basic
    @Column(name = "slopeCa")
    public Double getSlopeCa() {
        return slopeCa;
    }

    public void setSlopeCa(Double slopeCa) {
        this.slopeCa = slopeCa;
    }
    @Basic
    @Column(name = "littleFeslope")
    public Double getLittleFeslope() {
        return littleFeslope;
    }

    public void setLittleFeslope(Double littleFeslope) {
        this.littleFeslope = littleFeslope;
    }*/
   @Basic
   @Column(name = "setting")
    public Integer getSetting() {
        return setting;
    }

    public void setSetting(Integer setting) {
        this.setting = setting;
    }
    @Basic
    @Column(name = "slope")
    public Double getSlope() {
        return slope;
    }

    public void setSlope(Double slope) {
        this.slope = slope;
    }
}
