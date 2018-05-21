package asym.demo.springboot.dao.repo;

import asym.demo.springboot.dao.entity.AirportPlaneLandingReportEntity;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface ReportProcedureRepository extends Repository<AirportPlaneLandingReportEntity, String> {

    List<AirportPlaneLandingReportEntity> airportPlaneLandingReportProcedure(String iataCode);
}
