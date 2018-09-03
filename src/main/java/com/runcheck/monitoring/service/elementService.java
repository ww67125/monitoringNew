package com.runcheck.monitoring.service;


import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import com.runcheck.monitoring.jpa.equipment.EleJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class elementService {
    @Autowired
    private EleJPA eleJPA;
    public ElementsEntity getele(Integer eqid){
        ElementsEntity elementsEntity=new ElementsEntity();
        elementsEntity.setEqid(eqid);
        Example<ElementsEntity> example=Example.of(elementsEntity);
        return eleJPA.findOne(example).orElse(null);
    }
}
