package com.runcheck.monitoring.jpa.equipment;


import com.runcheck.monitoring.entity.equipment.EquipmentwarnEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EquipWarnJPA extends JpaRepository<EquipmentwarnEntity,Long> {

}
