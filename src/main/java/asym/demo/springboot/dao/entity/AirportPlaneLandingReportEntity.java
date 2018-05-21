package asym.demo.springboot.dao.entity;

import javax.persistence.ColumnResult;
import javax.persistence.ConstructorResult;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.StoredProcedureParameter;

@Entity
@SqlResultSetMapping(
        name = "AirportPlaneLandingMapping",
        classes = @ConstructorResult(
                targetClass = AirportPlaneLandingReportEntity.class, columns = {
                @ColumnResult(name = "airport_iata_code", type = String.class),
                @ColumnResult(name = "airport_name", type = String.class),
                @ColumnResult(name = "airplane_reg_num", type = String.class),
                @ColumnResult(name = "airplane_type", type = String.class),
                @ColumnResult(name = "landings", type = Integer.class)
        }
        ))
@NamedStoredProcedureQueries({
        @NamedStoredProcedureQuery(name = "airportPlaneLandingReportProcedure",
                procedureName = "AIRPORT_PLANE_LANDING_REPORT",
                parameters = {
                        @StoredProcedureParameter(mode = ParameterMode.REF_CURSOR, type = void.class),
                        @StoredProcedureParameter(mode = ParameterMode.IN, type = String.class)
                },
                resultSetMappings = "AirportPlaneLandingMapping")
})
public class AirportPlaneLandingReportEntity {
    private String airportIataCode;
    private String airportName;
    private String airplaneRegNum;
    private String airplaneType;
    private Integer landings;

    public AirportPlaneLandingReportEntity(String airportIataCode, String airportName, String airplaneRegNum, String airplaneType, Integer landings) {
        this.airportIataCode = airportIataCode;
        this.airportName = airportName;
        this.airplaneRegNum = airplaneRegNum;
        this.airplaneType = airplaneType;
        this.landings = landings;
    }

    @Id
    public String getAirportIataCode() {
        return airportIataCode;
    }

    public void setAirportIataCode(String airportIataCode) {
        this.airportIataCode = airportIataCode;
    }

    public String getAirportName() {
        return airportName;
    }

    public void setAirportName(String airportName) {
        this.airportName = airportName;
    }

    public String getAirplaneRegNum() {
        return airplaneRegNum;
    }

    public void setAirplaneRegNum(String airplaneRegNum) {
        this.airplaneRegNum = airplaneRegNum;
    }

    public String getAirplaneType() {
        return airplaneType;
    }

    public void setAirplaneType(String airplaneType) {
        this.airplaneType = airplaneType;
    }

    public Integer getLandings() {
        return landings;
    }

    public void setLandings(Integer landings) {
        this.landings = landings;
    }
}
