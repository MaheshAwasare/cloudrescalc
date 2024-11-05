package com.clouddost.cloudrescalc.repo;

import com.clouddost.cloudrescalc.entity.ResourceEstimateEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResourceEstimateRepository extends JpaRepository<ResourceEstimateEntity, Long> {
    List<ResourceEstimateEntity> findByApplicationTypeAndUserRange(String applicationType, String userRange);
    @Query("SELECT DISTINCT r.applicationType FROM ResourceEstimateEntity r")
    List<String> findDistinctApplicationTypes();
}
