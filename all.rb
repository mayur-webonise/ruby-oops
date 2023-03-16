class Company
  attr_accessor :company_id, :company_name, :company_type, :no_of_employees, :headquarter, :founded

  def initialize(company_id, company_name, company_type, no_of_employees, headquarter, founded)
    @company_id = company_id
    @company_name = company_name
    @company_type = company_type
    @no_of_employees = no_of_employees
    @headquarter = headquarter
    @founded = founded
    @departments =[]
  end

  def show_details
    puts "Here's the information for #{company_name}"
    puts "Company Name - #{company_name}"
    puts "Company Type - #{company_type}"
    puts "Number of employees - #{no_of_employees}"
    puts "Headquarter - #{headquarter}"
    puts "Founded in - #{company_name}"
  end

  def add_employee(emp_obj,department)
    emp_obj.department_id=hr_object.department_id
    # file_object=File.new("employee_details","a+")
    # file_object.syswrite("Employee ID   -#{emp_obj.employee_id}\n")
    # file_object.syswrite("Employee Name -" + emp_obj.employee_name + "\n")
    # file_object.syswrite("Age           -#{emp_obj.age}\n")
    # file_object.syswrite("Birth Date    -" + emp_obj.birth_date + "\n")
    # file_object.syswrite("Address       -" + emp_obj.address + "\n")
    # file_object.syswrite("Department ID -#{emp_obj.department_id}\n")
     end

end
company_1 = Company.new(101, 'Webonise', 'Privately Held', '201-500 employees', 'Raleigh, North Carolina', 2009)
company_1.show_details

class Department
  attr_accessor :department_id, :department_name

  @@total_no_of_employees = 0

  def initialize(department_id, department_name)
    @department_id = department_id
    @department_name = department_name
    @@total_no_of_employees += 1
  end

  def show_details
    puts "#{department_name} Department has : "
    puts "Department ID       - #{department_id}"
  end

  def show_total_employees
    puts "Total number of employees are #{@@total_no_of_employees}"
  end
end

class HR < Department
  attr_accessor :expertise

  DEGREE = %w[bsc bca BE-com]
  @@no_of_employees = 0

  def initialize(department_id, department_name, expertise)
    @expertise = expertise
    super(department_id, department_name)
    @@no_of_employees += 1
  end

  def show_details
    super()
    puts "Number of employees - #{@@no_of_employees}"
    puts "Expertise           - #{expertise}"
  end

  def recruitment
    puts 'HR department manages recruitment of freshers of experience candidates'
  end

  def selection_criteria(degree)
    if DEGREE.include?(degree)
      puts 'Eligible for further process'
    else
      puts 'Not eligible'
    end
  end
end


class QA < Department
  attr_accessor :quality

  DEGREE = %w[bsc bca BE-com]
  @@no_of_employees = 0

  def initialize(department_id, department_name, quality)
    @quality = quality
    super(department_id, department_name)
    @@no_of_employees += 1
  end

  def show_details
    super()
    puts "Number of employees - #{@@no_of_employees}"
    puts "Quality             - #{quality}"
  end

  def testing
    puts "#{department_name} departments main goal of the Quality Assurance (QA) department is to help create a quality product. "
  end

  def selection_criteria(degree)
    if DEGREE.include?(degree)
      puts 'Eligible for further process'
    else
      puts 'Not eligible'
    end
  end
end

#HR class object
hr_object = HR.new(0o01, 'HR', 'recruitment, selection, placement, socialisation')
hr_object.show_details
hr_object_1= HR.new(0o02, 'HR', 'recruitment, selection, placement, socialisation')
hr_object_1.show_details
hr_object.selection_criteria('abc')
hr_object_1.show_total_employees

#QA class object
qa_object=QA.new(0o01, 'QA', 'Good').show_details
hr_object_1.show_total_employees


def calculate_reward(remark)
  @reward=0 if remark=="bad"
  @reward=5 if remark=="average"
  @reward=10 if remark=="good"
end


class Employee 
  attr_accessor :employee_id ,:employee_name, :age, :birth_date, :address, :department_id

  def initialize (employee_id,employee_name,age,birth_date,address)
    @employee_id=employee_id
    @employee_name=employee_name
    @age=age
    @birth_date=birth_date
    @address=address
  end
end

emp_obj=Employee.new(101,"mayur",25,"1/1/1212","jalgaon")
company_1.add_employee(emp_obj,hr_object)
