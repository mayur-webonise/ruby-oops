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
