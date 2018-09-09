package com.runcheck.monitoring.jpa.equipment;

import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EquipJPA extends JpaRepository<EquiptmentEntity,Long> {
}
