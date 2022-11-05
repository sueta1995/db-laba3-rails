class InvokerController < ApplicationController
  def new
  end

  def create
    @temp = []
    @status = true

    begin
      # departments_filling
      # customers_filling
      # employees_filling
      # projects_filling
      assignments_filling

    rescue Exception => e
      @status = false
      @e = e
    end
  end

  private

  def departments_filling
    500000.times { @temp << { name: Faker::Company.name, ciphers: [rand(1000..9999), rand(1000..9999)] } }
    Department.insert_all(@temp)
  end

  def customers_filling
    500000.times { @temp << { name: Faker::Company.name, contact_information: random_json } }
    Customer.insert_all(@temp)
  end

  def employees_filling
    500000.times { @temp << { full_name: Faker::Name.name_with_middle, function: Faker::Job.position, department_id: rand(1..1120103) } }
    Employee.insert_all(@temp)
  end
  
  def projects_filling
    500000.times { @temp << { cipher: rand(10000000..99999999), name: Faker::App.name, deadline: random_date, laboriousness: rand(1..30), notice: Faker::Lorem.paragraph, customer_id: rand(1..1084027) } }
    Project.insert_all(@temp)
  end

  def assignments_filling
    500000.times { @temp << { laboriousness: rand(1..29), issue_date: random_date, planned_expiration_date: random_date, real_expiration_date: random_date, project_id: rand(1..1010000), employee_id: rand(1..1020930) } }
    Assignment.insert_all(@temp)
  end

  def random_json
    {'email': Faker::Internet.email, 'phone': Faker::PhoneNumber.cell_phone}
  end

  def random_date
    Time.at(rand(1667680530..1680000000)).to_s[0..-7]
  end

end
