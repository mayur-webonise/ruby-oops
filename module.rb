require 'csv'

module Read_CSV_File
  def self.write_file(employee_id,employee_name,age,birth_date,address,department_id)
    CSV.open('employee_details.csv', 'a') do |i|
      i << [employee_id,employee_name,age,birth_date,address,department_id]
    end
  end

  def self.read_file
    puts CSV.read('employee_details.csv')
  end
end

