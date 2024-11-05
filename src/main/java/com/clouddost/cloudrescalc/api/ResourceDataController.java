package com.clouddost.cloudrescalc.api;

import com.clouddost.cloudrescalc.dto.ResourceEstimate;
import com.clouddost.cloudrescalc.service.ResourceEstimateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ResourceDataController {
    @Autowired
    private ResourceEstimateService service;
    @GetMapping("/application-types")
    public List<String> getResourceEstimatesByUsersRange() {
        return service.findDistinctApplicationTypes();
    }

}
