$LOAD_PATH << '.'
require 'department'
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
