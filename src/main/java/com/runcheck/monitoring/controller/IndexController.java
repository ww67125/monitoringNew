package com.runcheck.monitoring.controller;

import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import com.runcheck.monitoring.entity.equipment.EquipmentwarnEntity;
import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import com.runcheck.monitoring.service.ElementService;
import com.runcheck.monitoring.service.EquipService;
import com.runcheck.monitoring.service.EquipWarnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class IndexController {
    DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    @Autowired
    EquipService equipService;
    @Autowired
    ElementService elementService;
    @Autowired
    EquipWarnService equipWarnService;
    @RequestMapping("index1")
    public String index(Model model){
        List<EquiptmentEntity> list= equipService.getAll();
        model.addAttribute("equiplist",list);
        return "index1";
    }
    @RequestMapping("editEquip")
    public String editEquip(Integer eqid,Model model){
        EquiptmentEntity equiptmentEntity=equipService.getByid(eqid);
        model.addAttribute("equip",equiptmentEntity);
        return "edit";
    }
    @RequestMapping("addEquip")
    public String addEquip(Model model){
        model.addAttribute("equip",new EquiptmentEntity());
        return "edit";
    }
    @RequestMapping("addEle")
    public String addEle(Integer eqid,Model model){
        EquipmentwarnEntity equipmentwarnEntity=new EquipmentwarnEntity();
        equipmentwarnEntity.setEqId(eqid);
        Example<EquipmentwarnEntity> example=Example.of(equipmentwarnEntity);
        List<EquipmentwarnEntity> list=equipWarnService.getAllByEx(example);
        model.addAttribute("eWlist",list);
        model.addAttribute("eqid",eqid);
        model.addAttribute("ele",new ElementsEntity());
        return "edit2";
    }
    @RequestMapping("addSet")
    public String addSet(Integer eqid,Model model){
        model.addAttribute("eqid",eqid);
        model.addAttribute("equipwarn",new EquipmentwarnEntity());
        return "edit3";
    }
    @RequestMapping("goResult")
    public String goResult(Integer eqid,Model model){
        Map<String,Map<String,ElementsEntity>> map=new HashMap<>();
        Map<String,ElementsEntity> map2=null;
        EquiptmentEntity equiptmentEntity=equipService.getByid(eqid);
        ElementsEntity elementsEntity=new ElementsEntity();
        elementsEntity.setEqid(eqid);
        Example<ElementsEntity> example=Example.of(elementsEntity);
        List<ElementsEntity> elelist=elementService.getAllByEx(example);
        for (ElementsEntity e:elelist){
            if (map.get(e.getType())==null){
                map2=new LinkedHashMap<>();
                if (map2.get(sdf.format(e.getChecktime()))==null){
                    map2.put(sdf.format(e.getChecktime()),e);
                }
                map.put(e.getType(),map2);
            }else {
                if (map.get(e.getType()).get(sdf.format(e.getChecktime()))==null){
                    map2=map.get(e.getType());
                    map2.put(sdf.format(e.getChecktime()),e);
                    map.put(e.getType(),map2);
                };
            }
        }
        model.addAttribute("map",map);
        model.addAttribute("equip",equiptmentEntity);
        return "index";
    }
}
