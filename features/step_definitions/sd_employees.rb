require 'pry'

Given /^I post to the rest API (.*) (.*) (.*)$/ do |name,salary,age|
  @browser.employees.post(name, salary, age)
end

When'I view the dummy API employee database' do
@browser.employees.dummy_site
end

Then /^I should see the created employee's details (.*) (.*) (.*)$/ do |name,salary,age|
expect(@browser.employees.check_data(name, salary, age)).to be true

end



