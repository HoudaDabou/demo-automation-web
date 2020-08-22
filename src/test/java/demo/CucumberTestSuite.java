package demo;

import demo.browserstack.BrowserStackSerenityTest;
import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        plugin = {"pretty"},
        features = "src/test/resources/features",
        strict = true,
        snippets = CucumberOptions.SnippetType.CAMELCASE
)
public class CucumberTestSuite extends BrowserStackSerenityTest {}
