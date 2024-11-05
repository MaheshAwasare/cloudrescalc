package com.clouddost.cloudrescalc.service;

import com.clouddost.cloudrescalc.dto.ResourceEstimate;
import com.clouddost.cloudrescalc.dto.ResourceEstimateData;
import com.clouddost.cloudrescalc.entity.ResourceEstimateEntity;
import com.clouddost.cloudrescalc.repo.ResourceEstimateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ResourceEstimateService {
@Autowired
ResourceEstimateRepository repository;
    public ResourceEstimateData getResourceEstimates(String applicationType, String userRange) {
        List<ResourceEstimateEntity> entities = repository.findByApplicationTypeAndUserRange(applicationType, userRange);
        if (!entities.isEmpty()) {
            ResourceEstimateEntity estimate = entities.get(0);
            return new ResourceEstimateData(
                    estimate.getApplicationType(),

                    estimate.getUserRange(),
                    estimate.getCpuCores(),
                    estimate.getRamGb(),
                    estimate.getBandwidthMbps(),
                    estimate.getStorageGb()
            );
        }
       return null;

    }

    public ResourceEstimateData getResourceEstimatesByRange(String applicationType, int numberOfUsers) {
        // Logic to determine the user range based on number of users
        String userRange;
        if (numberOfUsers <= 10000) {
            userRange = "small";
        } else if (numberOfUsers <= 50000) {
            userRange = "medium";
        } else {
            userRange = "high";
        }

        // Fetch resource estimates from the repository
        List<ResourceEstimateEntity> estimates = repository.findByApplicationTypeAndUserRange(applicationType, userRange);

        // We take the first match.
        if (!estimates.isEmpty()) {
            ResourceEstimateEntity estimate = estimates.get(0);
            return new ResourceEstimateData(
                    estimate.getApplicationType(),

                    estimate.getUserRange(),
                    estimate.getCpuCores(),
                    estimate.getRamGb(),
                    estimate.getBandwidthMbps(),
                    estimate.getStorageGb()
            );
        }
        return null;
    }
   public List<String> findDistinctApplicationTypes(){
        return  repository.findDistinctApplicationTypes();
    }

}

