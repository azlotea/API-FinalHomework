package StepDefs;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;

import io.restassured.response.Response;

import java.sql.SQLOutput;

import static io.restassured.RestAssured.given;

public class RequestsStepDefinition {
    private RequestSpecification request;
    private Response response;
    private Users users;

    @Given("^I have access to perform GET request as a \"([^\"]*)\"$")
    public void i_have_access_to_perform_GET_request_as_a(String userRole) throws Throwable {
        users = new Users();
        request = given().
                baseUri("http://bhdtest.endava.com:8080/petclinicSecured/api").
                contentType(ContentType.JSON).
                auth().basic(users.getCredentials(userRole)[0],users.getCredentials(userRole)[1]);
    }

    @When("^I perform GET request to \"([^\"]*)\"$")
    public void i_perform_GET_request_to(String path) throws Throwable {
        response = request.when().get(path);
    }

    @Then("^I will have status code \"([^\"]*)\"$")
    public void i_will_have_status_code(int statusCode) throws Throwable {
        response.then().statusCode(statusCode);
        System.out.println(response.asString());
    }

    @Given("^I have access to perform POST request as a \"([^\"]*)\"$")
    public void iHaveAccessToPerformPOSTRequestAsA(String userRole) throws Throwable {
        users = new Users();
        request = given().
                baseUri("http://bhdtest.endava.com:8080/petclinicSecured/api").
                body("{\"name\": \"cucumber\"}").
                contentType(ContentType.JSON).
                auth().basic(users.getCredentials(userRole)[0],users.getCredentials(userRole)[1]);
    }

    @When("^I perform POST request to \"([^\"]*)\"$")
    public void iPerformPOSTRequestTo(String path) throws Throwable {
        response = request.when().post(path);
    }
}
