package com.clouddost.cloudrescalc.dto;

import lombok.AllArgsConstructor;
import lombok.Data;


@Data
@AllArgsConstructor
public class ResourceEstimate {



    private String applicationType;

    private String userRange;
    private Integer maxUsers;
    private Integer maxRequestsPerSecond;
    private Integer cpuCores;
    private Integer ramGb;
    private Integer bandwidthMbps;
    private Integer storageGb;


}
