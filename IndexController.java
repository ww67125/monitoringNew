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
        List<Integer> list1=new ArrayList<>();
        List<Integer> list2=new ArrayList<>();
        List<Integer> list3=new ArrayList<>();
        List<Integer> list4=new ArrayList<>();
        List<Integer> list5=new ArrayList<>();
        List<Integer> list6=new ArrayList<>();
        List<Integer> list7=new ArrayList<>();
        List<Integer> list8=new ArrayList<>();
        List<Integer> list9=new ArrayList<>();
        List<Integer> list10=new ArrayList<>();
        List<Integer> list11=new ArrayList<>();
        List<Integer> list12=new ArrayList<>();
        List<Integer> list13=new ArrayList<>();
        List<Integer> list14=new ArrayList<>();
        for (ElementsEntity e:list){
            list1.add(e.getFe());
            list2.add(e.getCu());
            list3.add(e.getAl());
            list4.add(e.getCr());
            list5.add(e.getCd());
            list6.add(e.getAg());
            list7.add(e.getTi());
            list8.add(e.getFe());
            list9.add(e.getFe());
            list10.add(e.getFe());
            list11.add(e.getFe());
            list12.add(e.getFe());
            list13.add(e.getFe());
            list14.add(e.getFe());
            list15.add(e.getFe());
        }
        Map<String,String> map=new HashMap<>();
        map.put("铁含量","ag");
        map.put("铜含量","ca");
        map.put("铝含量","ag");
        map.put("铬含量","ag");
        map.put("镉含量","ag");
        map.put("银含量","ag");
        map.put("钛含量","ag");
        map.put("锡含量","ag");
        map.put("铅含量","ag");
        map.put("锌含量","ag");
        map.put("镁含量","ag");
        map.put("钙含量","ag");
        map.put("铁磁性磨屑含量","ag");

        model.addAttribute("map",map);
        model.addAttribute("list",list);
        return "index";
    }
}
