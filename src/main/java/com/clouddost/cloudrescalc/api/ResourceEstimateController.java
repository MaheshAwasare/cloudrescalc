package com.clouddost.cloudrescalc.api;

import com.clouddost.cloudrescalc.dto.ResourceEstimate;
import com.clouddost.cloudrescalc.dto.ResourceEstimateData;
import com.clouddost.cloudrescalc.service.ResourceEstimateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ResourceEstimateController {

    @Autowired
    private ResourceEstimateService service;

    @GetMapping("/resource-estimates-by-size")
    public ResourceEstimateData getResourceEstimatesByUsersRange(
            @RequestParam String applicationType,
            @RequestParam String size) {
        return service.getResourceEstimates(applicationType, size);
    }

    @GetMapping("/resource-estimates-by-number")
    public ResourceEstimateData getResourceEstimatesByUsersNumbers(
            @RequestParam String applicationType,
            @RequestParam Integer userRange) {
        return service.getResourceEstimatesByRange(applicationType, userRange);
    }

    @GetMapping("/ping")
    public String ping() {
        return "Cloud Resource Advisor service is running!!";
    }
}
