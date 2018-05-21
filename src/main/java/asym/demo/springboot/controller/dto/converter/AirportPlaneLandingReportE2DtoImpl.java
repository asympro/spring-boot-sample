package asym.demo.springboot.controller.dto.converter;

import asym.demo.springboot.controller.dto.AirportPlaneLandingReportDto;
import asym.demo.springboot.dao.entity.AirportPlaneLandingReportEntity;
import org.springframework.stereotype.Component;

@Component
public class AirportPlaneLandingReportE2DtoImpl implements AirportPlaneLandingReportE2Dto {

    @Override
    public AirportPlaneLandingReportDto convert(AirportPlaneLandingReportEntity entity) {
        AirportPlaneLandingReportDto dto = new AirportPlaneLandingReportDto();
        dto.setAirplaneRegNum(entity.getAirplaneRegNum());
        dto.setAirplaneType(entity.getAirplaneType());
        dto.setAirportIataCode(entity.getAirportIataCode());
        dto.setAirportName(entity.getAirportName());
        dto.setLandings(entity.getLandings());
        return dto;
    }
}
