# API-test-using-a-Feature-File-
Created a Feature File for a API POST request to a dummy site 


A Scenario Outline was used for this test so different sets of input data can be used. Each set of input data can be entered in the Examples table in the feature file.

The first step definition takes the input data from the Examples table and uses it in the 'post' function in the `employees.rb` file in the pages folder. This function converts a ruby hash to json and parse it to the API.

'Once the employee data page has been reached, the 'check_data' function checks that the same input data is now displayed on the dummy page 'http://dummy.restapiexample.com/api/v1/employees.
