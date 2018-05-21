package asym.demo.springboot.controller;

import asym.demo.springboot.controller.dto.AirportPlaneLandingReportDto;
import asym.demo.springboot.controller.dto.converter.AirportPlaneLandingReportE2Dto;
import asym.demo.springboot.dao.entity.AirportPlaneLandingReportEntity;
import asym.demo.springboot.dao.repo.ReportProcedureRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ReportController {

    private final ReportProcedureRepository reportProcedureRepository;

    private final AirportPlaneLandingReportE2Dto airportPlaneLandingReportE2Dto;

    @Autowired
    public ReportController(AirportPlaneLandingReportE2Dto airportPlaneLandingReportE2Dto,
                            ReportProcedureRepository reportProcedureRepository) {
        this.airportPlaneLandingReportE2Dto = airportPlaneLandingReportE2Dto;
        this.reportProcedureRepository = reportProcedureRepository;
    }

    @RequestMapping(value = "/report/landing/airport/{iatacode}", method = RequestMethod.GET)
    @ResponseBody
    @Transactional
    public List<AirportPlaneLandingReportDto> airportPlaneLandingReport(@PathVariable("iatacode") final String airportIataCode) {
        List<AirportPlaneLandingReportEntity> airportPlaneLandingReport
                = reportProcedureRepository.airportPlaneLandingReportProcedure(airportIataCode);
        return airportPlaneLandingReport.stream().map(airportPlaneLandingReportE2Dto::convert).collect(Collectors.toList());
    }

}
