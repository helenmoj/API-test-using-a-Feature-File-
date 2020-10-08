Feature: Create new user via API

  Scenario Outline: Confirm that a new user can be created

    Given I post to the rest API <employee_name> <employee_salary> <age>
    When I view the dummy API employee database
    Then I should see the created employee's details <employee_name> <employee_salary> <age>

    Examples:
      | employee_name | employee_salary | age |
      | Daisy         | 1245            | 50  |
