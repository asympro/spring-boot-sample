package asym.demo.springboot.controller.dto.converter;

import asym.demo.springboot.controller.dto.AirportPlaneLandingReportDto;
import asym.demo.springboot.dao.entity.AirportPlaneLandingReportEntity;

public interface AirportPlaneLandingReportE2Dto {
    AirportPlaneLandingReportDto convert(AirportPlaneLandingReportEntity entity);
}
