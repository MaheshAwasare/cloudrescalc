package com.clouddost.cloudrescalc.dto;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ResourceEstimateData {
    private String applicationType;

    private String userRange;
    private Integer cpuCores;
    private Integer ramGb;
    private Integer bandwidthMbps;
    private Integer storageGb;

}
