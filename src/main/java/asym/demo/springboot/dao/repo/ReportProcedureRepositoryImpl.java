package asym.demo.springboot.dao.repo;

import asym.demo.springboot.dao.entity.AirportPlaneLandingReportEntity;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.util.List;

@org.springframework.stereotype.Repository
public class ReportProcedureRepositoryImpl implements ReportProcedureRepository {

    @PersistenceContext
    private EntityManager em;

    @SuppressWarnings("unchecked")
    public List<AirportPlaneLandingReportEntity> airportPlaneLandingReportProcedure(String iataCode) {
        StoredProcedureQuery procedure =
                em.createNamedStoredProcedureQuery("airportPlaneLandingReportProcedure");
        procedure.setParameter(2, iataCode);
        return procedure.getResultList();
    }
}
