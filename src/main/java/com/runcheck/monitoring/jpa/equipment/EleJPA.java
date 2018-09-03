package com.runcheck.monitoring.jpa.equipment;

import com.runcheck.monitoring.entity.equipment.ElementsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EleJPA extends JpaRepository<ElementsEntity,Long> {
}
