require 'csv'

module Read_CSV_File
  def self.read_file
    puts CSV.read('employee_details.csv')
  end
end
Read_CSV_File.read_file
