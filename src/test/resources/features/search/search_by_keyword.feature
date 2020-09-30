Feature: search by keyword


  Scenario Outline: search by keyword
    Given Sergey is researching things on the internet
    When he looks up "<word>"
    Then he should see information about "<word>"

    Examples:
      | word |
      | Cucumber |
