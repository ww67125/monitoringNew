package com.runcheck.monitoring;

import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import com.runcheck.monitoring.jpa.equipment.EquipJPA;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.test.context.junit4.SpringRunner;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

@RunWith(SpringRunner.class)
@SpringBootTest
public class MonitoringApplicationTests {
    @Autowired
    EquipJPA equipJPA;
    @Test
    public void contextLoads() {
//        Pageable pageable=new PageRequest()
        Page<EquiptmentEntity> pages=equipJPA.findAll(new Specification<EquiptmentEntity>() {
                                                          @Override
                                                          public Predicate toPredicate(Root<EquiptmentEntity> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                                                              Predicate p1 = criteriaBuilder.like(root.get("companyName").as(String.class), "%2%");
                                                              Predicate p2 = criteriaBuilder.like(root.get("equipmentName").as(String.class), "%2%");
                                                              Predicate p3 = criteriaBuilder.like(root.get("equipmentNo").as(String.class), "%a%");
                                                               criteriaQuery.where(criteriaBuilder.and(criteriaBuilder.or(p1,p2),p3));
                                                              return criteriaQuery.getGroupRestriction();
                                                          }
                                                      }
                , new PageRequest(0, 10));
        System.out.println("asd");

    }

}
