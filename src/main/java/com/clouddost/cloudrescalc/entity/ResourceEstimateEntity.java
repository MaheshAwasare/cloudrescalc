package com.clouddost.cloudrescalc.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "resource_estimates")
@Getter
@Setter
public class ResourceEstimateEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String applicationType;
    private String technologies;
    private String userRange;
    private Integer maxUsers;
    private Integer maxRequestsPerSecond;
    private Integer cpuCores;
    private Integer ramGb;
    private Integer bandwidthMbps;
    private Integer storageGb;


}
