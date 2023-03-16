$LOAD_PATH << '.'
require 'quality-assurance'
require 'human-resource'
require 'employee'
require 'module'
require 'singleton'


class Company
include Read_CSV_File
include Singleton
  attr_accessor :company_id, :company_name, :company_type, :headquarter, :founded
  @@no_of_employees = 0
  

  def initialize(company_id, company_name, company_type, headquarter, founded)
    @company_id = company_id
    @company_name = company_name
    @company_type = company_type
    @headquarter = headquarter
    @founded = founded
    hr_object = HR.new(0o01, 'HR', 'recruitment, selection, placement, socialisation')
    qa_object=QA.new(0o02, 'QA', 'Good')
    @departments = [hr_object,qa_object]
  end

  def show_details
    puts "Here's the information for #{company_name}"
    puts "Company Type - #{company_type}"
    puts "Number of employees - #{@@no_of_employees}"
    puts "Headquarter - #{headquarter}"
    puts "Founded in - #{founded}"
  end

  def create_employee(employee_hash)
    @dept_id=search_department(employee_hash['department_key'])
     unless @dept_id.nil?
      empobj=Employee.new(employee_hash['employee_id'],employee_hash['employee_name'],employee_hash['age'],employee_hash['birth_date'],employee_hash['address'],@dept_id)
      write_csv(empobj)
      @@no_of_employees += 1
     else 
      puts "no such department"
     end
  end

  def search_department(department_key)
    @departments.each do |i|
      if i.department_name == department_key
         @temp=i.department_id
        break
      end    
    end
    @temp
  end

  def write_csv(emp_obj)
    Read_CSV_File.write_file(emp_obj.employee_id,emp_obj.employee_name,emp_obj.age,emp_obj.birth_date,emp_obj.address,emp_obj.department_id)
  end

end

company_object = Company.instance(101, 'Webonise', 'Privately Held','Raleigh, North Carolina', 2009)
employee_hash = Hash["employee_id" => 101, "employee_name" => "mayur", "age" => 25, "birth_date" => "1/1/1212","address" => "jalgaon", "department_key" =>"HR"]
company_object.create_employee(employee_hash)
company_object.show_details

