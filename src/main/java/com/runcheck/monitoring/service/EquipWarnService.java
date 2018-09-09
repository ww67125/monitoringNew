package com.runcheck.monitoring.service;

import com.runcheck.monitoring.entity.equipment.EquipmentwarnEntity;
import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import com.runcheck.monitoring.jpa.equipment.EquipWarnJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class EquipWarnService {
    @Autowired
    EquipWarnJPA equipWarnJPA;
    public EquipmentwarnEntity getByid(Integer id){
        EquipmentwarnEntity elementsEntity=new EquipmentwarnEntity();
        elementsEntity.setId(id);
        Example<EquipmentwarnEntity> example=Example.of(elementsEntity);
        return equipWarnJPA.findOne(example).orElse(null);
    }
    public EquipmentwarnEntity getoneByEx(Example<EquipmentwarnEntity> example){
        return equipWarnJPA.findOne(example).orElse(null);
    }
    public List<EquipmentwarnEntity> getAllByEx(Example<EquipmentwarnEntity> example){
        return equipWarnJPA.findAll(example);
    }
    public void saveObject(EquipmentwarnEntity entity){
        equipWarnJPA.save(entity);
    }
}
