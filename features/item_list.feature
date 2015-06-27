Feature: Item List Feature

  Scenario: Click on an item in the list and see its details
    When I click on "Item 1"
    Then I see "Item 1" in detail
