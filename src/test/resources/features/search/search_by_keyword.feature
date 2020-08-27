Feature: Search by keyword


  Scenario Outline: Search by keyword
    Given Sergey is researching things on the internet
    When he looks up "<word>"
    Then he should see information about "<word>"

    Examples:
      | word |
      | Cucumber |
