package asym.demo.springboot;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.jdbc.SqlGroup;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.http.MediaType.APPLICATION_JSON_UTF8;
import static org.springframework.test.context.jdbc.Sql.ExecutionPhase;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@SqlGroup({
        //UNFORTUNATELY https://jira.spring.io/browse/SPR-14357 is still not resolved
        @Sql(executionPhase = ExecutionPhase.BEFORE_TEST_METHOD, scripts = "classpath:/db/data/test_data.sql"),
        @Sql(executionPhase = ExecutionPhase.AFTER_TEST_METHOD, scripts = "classpath:/db/data/clean_data.sql")})
public class ApplicationTests {

    @Autowired
    private WebApplicationContext context;

    private MockMvc mockMvc;

    @Before
    public void setup() {
        mockMvc = MockMvcBuilders
                .webAppContextSetup(context)
                .build();
    }

    @Test
    public void testLED() throws Exception {
        mockMvc.perform(get("/report/landing/airport/{iatacode}", "LED"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(APPLICATION_JSON_UTF8))
                .andExpect(content().string("[{\"airportIataCode\":\"LED\",\"airportName\":\"Pulkovo\",\"airplaneRegNum\":\"B747\",\"airplaneType\":\"Boeing 747-400\",\"landings\":14},{\"airportIataCode\":\"LED\",\"airportName\":\"Pulkovo\",\"airplaneRegNum\":\"A380\",\"airplaneType\":\"Airbus A380-800\",\"landings\":1}]"));
    }

    @Test
    public void testDME() throws Exception {
        mockMvc.perform(get("/report/landing/airport/{iatacode}", "DME"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(APPLICATION_JSON_UTF8))
                .andExpect(content().string("[{\"airportIataCode\":\"DME\",\"airportName\":\"Domodedovo\",\"airplaneRegNum\":\"A380\",\"airplaneType\":\"Airbus A380-800\",\"landings\":2}]"));
    }

    @Test
    public void testVKO() throws Exception {
        mockMvc.perform(get("/report/landing/airport/{iatacode}", "VKO"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(APPLICATION_JSON_UTF8))
                .andExpect(content().string("[{\"airportIataCode\":\"VKO\",\"airportName\":\"Vnukovo\",\"airplaneRegNum\":\"A380\",\"airplaneType\":\"Airbus A380-800\",\"landings\":7}]"));
    }

    @Test
    public void testSVO() throws Exception {
        mockMvc.perform(get("/report/landing/airport/{iatacode}", "SVO"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(APPLICATION_JSON_UTF8))
                .andExpect(content().string("[{\"airportIataCode\":\"SVO\",\"airportName\":\"Sheremetyevo\",\"airplaneRegNum\":\"B747\",\"airplaneType\":\"Boeing 747-400\",\"landings\":14}]"));
    }

    @Test
    public void testSIP() throws Exception {
        mockMvc.perform(get("/report/landing/airport/{iatacode}", "SIP"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(APPLICATION_JSON_UTF8))
                .andExpect(content().string("[{\"airportIataCode\":\"SIP\",\"airportName\":\"Simferopol\",\"airplaneRegNum\":\"A380\",\"airplaneType\":\"Airbus A380-800\",\"landings\":8}]"));
    }
}
