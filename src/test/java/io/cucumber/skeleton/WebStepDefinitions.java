package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.eo.Se;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

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
        driver.get("https://www.dominospizza.es/");
    }

    //---------------------------------------------SEE-------------------------------------------------//

    @Then("I should see a {string} button/text")
    public void iShouldSeeAButtonText(String text) {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @Then("I should see a {string} form")
    public void iShouldSeeAForm(String text) {
        By byXPath = By.id(text);
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
    }

    @Then("I should see an alert saying {string}")
    public  void iShouldSeeAnAlertContaining(String alertInfo) {
        try {
            driver.switchTo().alert();
            iShouldSeeAButtonText(alertInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //------------------------------------------WRITE-------------------------------------------------//
    @And("Scroll down {string}")
    public void ScrollDown(String pixels){
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,"+pixels+")", "");
    }

    @And("I write on input id {string} the text {string}")
    public void IEnterTextOnForm(String formElement, String text) {
        WebElement element = driver.findElement(By.id(formElement));
        element.sendKeys(text);
    }

    @And("I write on input name {string} the text {string}")
    public void IEnterTextOnFormByName(String formElement, String text) {
        WebElement element = driver.findElement(By.name(formElement));
        element.sendKeys(text);
    }



    //------------------------------------------CLICKS-------------------------------------------------//


    @When("I click on {string} text button")
    public void iClickOnButtonText(String button_text) {
        driver.findElement(By.xpath(".//button[contains(.,'"+button_text+"')]")).click();
    }

    @When("I click on {string} button")
    public void iClickOnButton(String button_id) {
        driver.findElement(By.id(button_id)).click();
    }

    @When("I click on {string} button with class {string}")
    public void iClickOnButtonClass(String button_id, String buttonClass) {
        String cssClass = "." + buttonClass;
        driver.findElement(By.cssSelector(cssClass)).click();
    }


    @When(("I click on {string} text"))
    public void iClickOnElement(String element_text) {
        WebElement webElement = driver.findElement(By.xpath(".//*[contains(.,'"+element_text+"')]"));
        webElement.click();
    }



    @When(("I submit {string} form"))
    public void iClickOnSubmit(String value) {
        driver.findElement(By.id(value)).submit();
    }

    @When(("I submit class {string} form"))
    public void iClickOnSubmitByClass(String value) {
        String cssClass = "." + value;
        driver.findElement(By.cssSelector(cssClass)).click();

    }

    @When(("I submit name {string} form"))
    public void iClickOnSubmitByName(String value) {
        driver.findElement(By.name(value)).click();

    }

    @When(("I close {string} window"))
    public  void iCloseWindow(String name) {
        driver.findElement(By.className(name)).click();
    }

    @When(("I select name {string} value {string}"))
    public void iClickSelectOption(String name,String value) {
        Select drop= new Select(driver.findElement(By.name(name)));
        drop.selectByValue(value);

    }
    @When(("I select class {string} value {string}"))
    public void iClickSelectOptionByClass(String name,String value) {
        Select drop= new Select(driver.findElement(By.className(name)));
        drop.selectByValue(value);

    }
    @When(("I select id {string} value {string}"))
    public void iClickSelectOptionById(String name,String value) {
        Select drop= new Select(driver.findElement(By.id(name)));
        drop.selectByValue(value);

    }
    @When(("I click on {string} text with id {string}"))
    public void iClickOnElement(String element_text, String id) {
        WebElement webElement = driver.findElement(By.id(id));
        webElement.click();
    }
    @When(("I submit id {string} form"))
    public void iClickOnSubmitById(String value) {
        driver.findElement(By.id(value)).submit();
    }
    @When(("I click on {string} href with link {string}"))
    public void iClickOnHref(String name, String link) {

        if (!driver.findElements(By.xpath("//a[@href='"+link+"']")).isEmpty() ){
            driver.findElement(By.xpath("//a[@href='"+link+"']")).click();
        };
    }
    @When(("I click input by valuee {string}"))
    public void iClickOnClasss(String link) {
        //WebElement drop=  driver.findElement(By.id(link));
        //drop.click();
        driver.findElement(By.xpath("//li[@data-entrante-type='"+link+"']")).click();

        //driver.findElement(By.id(link)).click();


    }
    @When("I click by css selector {string}")
    public  void iClickByClass(String cssSelector){
        WebElement actionBtn=driver.findElement(  By.cssSelector(cssSelector));
        actionBtn.click();



    }
    @When(("I click on {string} class with link {string}"))
    public void iClickOnClass(String name, String link) {
        String cssClass = "." + link;
        driver.findElement(By.cssSelector(cssClass)).click();

        if (!driver.findElements(By.cssSelector(link)).isEmpty() ){
        };
    }

    //-----------------------------------------------------------------------------------------------//
    @And("I take a screenshot with filename {string}")
    public void iTakeAScreenshotWithFilename(String filename) {
        byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
        scenario.attach(screenshot, "image/png", "filename");
    }

    @And("I wait for {long} milliseconds")
    public void iWaitFor(long milliseconds) throws InterruptedException {
        Thread.sleep(milliseconds);
    }
    @And("I delete input name {string} text")
    public void iDeleteInputText(String name) {
        WebElement element = driver.findElement(By.name(name));
        element.clear();
    }


    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }

}
