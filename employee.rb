class Employee 
  attr_accessor :employee_id ,:employee_name, :age, :birth_date, :address, :department_id
  @@no_of_employees=0

  def initialize (employee_id,employee_name,age,birth_date,address)
    @employee_id=employee_id
    @employee_name=employee_name
    @age=age
    @birth_date=birth_date
    @address=address
    
  end

  def add_employee(emp_obj)
    employee_array << emp_obj
    @@no_of_employees+=1
  end
end
