#require 'httparty'
#require 'capybara/dsl'
#require 'rubygems'
require 'rest-client'

class Employees
 include Capybara::DSL



 #def post(employee_name, employee_salary, age)
    #uri = URI('http://dummy.restapiexample.com/api/v1/create')
    #result = HTTParty.post('http://dummy.restapiexample.com/api/v1/create',
       #                   :body =>  { :employee_name => employee_name,
      #                                :employee_salary => employee_salary,
     #                                  :age => age
      #                     }.to_json,
       #                    :headers => { 'Content-Type' => 'application/json' } )
 # end
                           #
                           def post(name, salary, age)
                             uri = URI('http://dummy.restapiexample.com/api/v1/create')
                             http = Net::HTTP.new(uri.host, uri.port)
                             req = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
                             req.body = {:name => name,
                                         :salary => salary,
                                         :age => age}.to_json
                             res = http.request(req)
                             puts "response #{res.body}"
                           end

# def dummy_site
#     @browser.goto 'https://the-internet.herokuapp.com'
 #  end

  def dummy_site
   # @browser.goto 'http://dummy.restapiexample.com/api/v1/employees'
    visit('http://dummy.restapiexample.com/api/v1/employees')
    sleep 2
  end

  def check_data(employee_name, employee_salary, age)
    page.has_content?(`"employee_name":"#{employee_name}","employee_salary":"#{employee_salary}","age":"#{age}"`)
  end
  end
