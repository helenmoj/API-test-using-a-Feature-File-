require 'rest-client'

class Employees
 include Capybara::DSL

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

  def dummy_site
    visit('http://dummy.restapiexample.com/api/v1/employees')
    sleep 2
  end

  def check_data(name, salary, age)
    page.has_content?(`"employee_name":"#{name}","employee_salary":"#{salary}","age":"#{age}"`)
  end
  end
