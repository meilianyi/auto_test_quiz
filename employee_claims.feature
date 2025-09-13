Feature: Employee Claims Management
  As an HR system user
  I want to assign claims to employees
  So that I can track their reimbursement requests

  @Chrome
  Scenario: Assign claim in Chrome browser
    Given I have launched "Chrome" browser
    When I open "https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index"
    And I login with username "Admin" and password "admin123"
    And I click on "Claims" in the left sidebar
    And I click on "Employee Claims"
    And I create a new claim request with:
      | Employee Name  | Event              | Currency |
      | Amelia Brown   | Travel allowances | Euro     |
    Then I verify the creation success message and take a "CreateSuccess" screenshot
    And I navigate to the Assign Claim details page
    Then I verify the claim details and take a "ClaimDetails" screenshot
    When I add an expense with:
      | Expense Type | Date       | Amount  |
      | Travel       | 2023-10-05 | 150.00  |
    Then I verify the expense success message and take a "ExpenseSuccess" screenshot
    And I verify the expense details are correct and take a "VerifyExpense" screenshot
    And I click "Back" and take a "BackPage" screenshot
    Then I verify the record exists in the table and take a "RecordExists" screenshot

  @Edge
  Scenario: Assign claim in Edge browser (IE Mode)
    Given I have launched "Edge" browser (IE Mode)
    When I open "https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index"
    And I login with username "Admin" and password "admin123"
    And I click on "Claims" in the left sidebar
    And I click on "Employee Claims"
    And I create a new claim request with:
      | Employee Name  | Event              | Currency |
      | Amelia Brown   | Travel allowances | Euro     |
    Then I verify the creation success message and take a "CreateSuccess" screenshot
    And I navigate to the Assign Claim details page
    Then I verify the claim details and take a "ClaimDetails" screenshot
    When I add an expense with:
      | Expense Type | Date       | Amount  |
      | Travel       | 2023-10-05 | 150.00  |
    Then I verify the expense success message and take a "ExpenseSuccess" screenshot
    And I verify the expense details are correct and take a "VerifyExpense" screenshot
    And I click "Back" and take a "BackPage" screenshot
    Then I verify the record exists in the table and take a "RecordExists" screenshot
