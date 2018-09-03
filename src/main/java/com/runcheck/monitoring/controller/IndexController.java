package com.runcheck.monitoring.controller;

import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @RequestMapping("index")
    public String index(Model model){
        List<ElementsEntity> list=new ArrayList<>();
        ElementsEntity elementsEntity=new ElementsEntity();
        elementsEntity.setAg(12);
        elementsEntity.setCa(11);
        list.add(elementsEntity);
        ElementsEntity elementsEntity2=new ElementsEntity();
        elementsEntity2.setAg(1);
        elementsEntity2.setCa(2);
        list.add(elementsEntity2);
        Map<String,String> map=new HashMap<>();
        map.put("贡","ag");
        map.put("盖","ca");
        model.addAttribute("map",map);
        model.addAttribute("list",list);
        return "index";
    }
}
