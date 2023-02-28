$LOAD_PATH << '.'
require 'department'
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
