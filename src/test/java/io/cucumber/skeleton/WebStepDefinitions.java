package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.Iterator;
import java.util.List;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private Scenario scenario;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "/usr/local/bin/chromedriver");
        driver = new ChromeDriver();
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("I go to the home page")
    public void iGoToTheHomePage() {
        driver.get("https://tinkerwatches.com/");
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButton(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @And("I wait for {long} milliseconds")
    public void iWaitFor(long milliseconds) throws InterruptedException {
        Thread.sleep(milliseconds);
    }

    @Then("I should see a {string} form")
    public void iShouldSeeAForm(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_text) {
        driver.findElement(By.xpath(".//button[contains(.,'"+button_text+"')]")).click();
    }

    //click on text <a href>
    @When(("I click on {string} text"))
    public void iClickOnElement(String element_text) {
        WebElement webElement = driver.findElement(By.xpath(".//*[contains(.,'"+element_text+"')]"));
        webElement.click();
    }

    @And("I write on form {string} the text {string}")
    public void IEnterTextOnForm(String formElement, String text) {
        WebElement element = driver.findElement(By.id(formElement));
        element.sendKeys(text);
    }

    @And("I take a screenshot with filename {string}")
    public void iTakeAScreenshotWithFilename(String filename) {
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", "filename");
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
