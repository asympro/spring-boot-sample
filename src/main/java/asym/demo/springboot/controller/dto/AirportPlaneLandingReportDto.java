package asym.demo.springboot.controller.dto;

public class AirportPlaneLandingReportDto {
    private String airportIataCode;
    private String airportName;
    private String airplaneRegNum;
    private String airplaneType;
    private int landings;

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

    public int getLandings() {
        return landings;
    }

    public void setLandings(int landings) {
        this.landings = landings;
    }
}
