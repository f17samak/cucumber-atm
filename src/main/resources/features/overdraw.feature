Feature: overdraw
    As a customer
    I can choose between two accounts, normal and OD
    so that I can pay attention to not spending too much or avoid debit rejections.




Scenario: Withdraw too much from normal account
    Given a customer with id 1 and pin 111 with balance 100 overdraft amount is 0
    And I login to ATM with id 1 and pin 111
    When I overdraw 120 from ATM
    Then my account balance is 100

Scenario: Withdraw from OD account
    Given a customer with id 2 and pin 222 with balance 100 overdraft amount is 400
    And I login to ATM with id 2 and pin 222
    When I withdraw 275 from ATM
    Then my account balance is -175

Scenario: Withdraw too much from OD account
    Given a customer with id 2 and pin 222 with balance 100 overdraft amount is 400
    And I login to ATM with id 2 and pin 222
    When I overdraw 550 from ATM
    Then my account balance is 100