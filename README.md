# API-test-using-a-Feature-File-
Created a Feature File for a API POST request to a dummy site 


A Scenario Outline was used for this test so different sets of data can be entered in the Examples table in the feature file.

The first step definition takes the  data from the Examples table and uses it in the 'post' function in the `employees.rb` file in the pages folder. 

'Once the employee data page has been reached, the 'check_data' function checks that the same input data is now displayed on the dummy page 'http://dummy.restapiexample.com/api/v1/employees.

Test Stack:

Capybara
Cucumber
Ruby
