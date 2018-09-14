package com.runcheck.monitoring.controller;

import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import com.runcheck.monitoring.entity.equipment.EquipmentwarnEntity;
import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import com.runcheck.monitoring.service.ElementService;
import com.runcheck.monitoring.service.EquipService;
import com.runcheck.monitoring.service.EquipWarnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
public class SaveController {
    DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    @Autowired
    EquipService equipService;
    @Autowired
    ElementService elementService;
    @Autowired
    EquipWarnService equipWarnService;
    @RequestMapping("saveEquip")
    public String saveEquip(@Valid EquiptmentEntity entity, BindingResult result, Model model){

        Calendar cal = Calendar.getInstance();

        cal.setTime(entity.getBegindate());

        long time1 = cal.getTimeInMillis();

        cal.setTime(entity.getLastdate());

        long time2 = cal.getTimeInMillis();

        long between_days=(time2-time1)/(1000*3600*24);

       entity.setRuntime(String.valueOf(between_days));
        equipService.saveObject(entity);
        List<EquiptmentEntity> list=equipService.getAll();
        model.addAttribute("equiplist",list);
        return "index1";
    }
    @RequestMapping("saveEle")
    public String saveEle(@Valid ElementsEntity entity, String sqid,String elements, BindingResult result, Model model){
        if (entity.getChecktime()==null){
            entity.setChecktime(new Date());
        }
        if (entity.getCollecttime()==null){
            entity.setCollecttime(new Date());
        }
        int i=0;
        for (String el:elements.split(",")){
            if(!el.equals("")){
                ElementsEntity elementsEntity=new ElementsEntity();
                elementsEntity.setEqid(entity.getEqid());
                elementsEntity.setChecktime(entity.getChecktime());
                elementsEntity.setCollecttime(entity.getChecktime());
                if (!sqid.split(",")[i].equals("")){
                    elementsEntity.setEquipentWarn( equipWarnService.getByid(Integer.parseInt(sqid.split(",")[i])));

                }
                 elementsEntity.setType(entity.getType().split(",")[i]);
                elementsEntity.setElements(Integer.parseInt(el));
//                ellist.add(elementsEntity);
                elementService.saveObject(elementsEntity);
            }
            i++;
        }
//        entity.setEquipentWarn(equipWarnService.getByid(Integer.parseInt(sqid)));
//        elementService.saveObjects(ellist);
        List<EquiptmentEntity> list=equipService.getAll();
        model.addAttribute("equiplist",list);
        return "index1";
    }
    @RequestMapping("saveEquipWarn")
    public String saveEquipWarn(@Valid EquipmentwarnEntity entity, BindingResult result,Model model){
        equipWarnService.saveObject(entity);
        List<EquiptmentEntity> list=equipService.getAll();
        model.addAttribute("equiplist",list);
        return "index1";
    }
}
