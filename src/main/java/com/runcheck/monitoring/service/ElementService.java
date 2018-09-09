package com.runcheck.monitoring.service;


import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import com.runcheck.monitoring.jpa.equipment.EleJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class ElementService {
    @Autowired
    private EleJPA eleJPA;
    public ElementsEntity geteleByid(Integer id){
        ElementsEntity elementsEntity=new ElementsEntity();
        elementsEntity.setId(id);
        Example<ElementsEntity> example=Example.of(elementsEntity);
        return eleJPA.findOne(example).orElse(null);
    }
    public ElementsEntity getoneByEx(Example<ElementsEntity> example){
        return eleJPA.findOne(example).orElse(null);
    }
    public List<ElementsEntity> getAllByEx(Example<ElementsEntity> example){
        Sort sort=new Sort(Sort.Direction.ASC,"checktime");
        return eleJPA.findAll(example,sort);
    }
    public void saveObject(ElementsEntity entity){
        eleJPA.save(entity);
    }
}
