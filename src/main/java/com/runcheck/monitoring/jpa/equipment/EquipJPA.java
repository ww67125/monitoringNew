package com.runcheck.monitoring.jpa.equipment;

import com.runcheck.monitoring.entity.equipment.EquiptmentEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface EquipJPA extends JpaRepository<EquiptmentEntity,Long>,JpaSpecificationExecutor<EquiptmentEntity> {
    public Page<EquiptmentEntity> findAllByCompanyNameContainingAndEquipmentNameContaining(String Com, String eq,String no, Pageable pageable);
}

