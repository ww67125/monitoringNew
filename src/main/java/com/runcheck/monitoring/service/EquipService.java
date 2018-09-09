package com.runcheck.monitoring.service;

import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import com.runcheck.monitoring.jpa.equipment.EquipJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class EquipService {
    @Autowired
    EquipJPA equipJPA;
    public EquiptmentEntity getByid(Integer id){
        EquiptmentEntity elementsEntity=new EquiptmentEntity();
        elementsEntity.setId(id);
        Example<EquiptmentEntity> example=Example.of(elementsEntity);
        return equipJPA.findOne(example).orElse(null);
    }
    public EquiptmentEntity getoneByEx(Example<EquiptmentEntity> example){
        return equipJPA.findOne(example).orElse(null);
    }
    public List<EquiptmentEntity> getAllByEx(Example<EquiptmentEntity> example){
        return equipJPA.findAll(example);
    }
    public List<EquiptmentEntity> getAll(){
        return equipJPA.findAll();
    }
    public void saveObject(EquiptmentEntity entity){
        equipJPA.save(entity);
    }
}
