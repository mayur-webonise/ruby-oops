$LOAD_PATH << '.'
require 'quality-assurance'
require 'humanresource'
require 'employee'

class Company
  attr_accessor :company_id, :company_name, :company_type, :no_of_employees, :headquarter, :founded

  def initialize(company_id, company_name, company_type, no_of_employees, headquarter, founded)
    @company_id = company_id
    @company_name = company_name
    @company_type = company_type
    @no_of_employees = no_of_employees
    @headquarter = headquarter
    @founded = founded
    hr_object = HR.new(0o01, 'HR', 'recruitment, selection, placement, socialisation')
    qa_object=QA.new(0o01, 'QA', 'Good')
    @departments = [hr_object,qa_object]
    employee_array=Array.new
  end

  def show_details
    puts "Here's the information for #{company_name}"
    puts "Company Name - #{company_name}"
    puts "Company Type - #{company_type}"
    puts "Number of employees - #{no_of_employees}"
    puts "Headquarter - #{headquarter}"
    puts "Founded in - #{company_name}"
  end

  def create_employee(employee_id,employee_name,age,birth_date,address,department_key)
    @department.each do |i|
      if i.department_name==department_key
        emp=Employee.new(101,"mayur",25,"1/1/1212","jalgaon",i.department_id)
        emp.add_employee(emp)
         break
      else
        puts "no such department there"
      end
    end
  end
end
company_1 = Company.new(101, 'Webonise', 'Privately Held', '201-500 employees', 'Raleigh, North Carolina', 2009)
company_1.create_employee(101,"mayur",25,"1/1/1212","jalgaon","HR")
