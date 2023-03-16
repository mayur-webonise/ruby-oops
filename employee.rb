class Employee 
  attr_accessor :employee_id ,:employee_name, :age, :birth_date, :address, :department_id
  @@no_of_employees=0
  
  def initialize (employee_id,employee_name,age,birth_date,address,department_id)
    @employee_id=employee_id
    @employee_name=employee_name
    @age=age
    @birth_date=birth_date
    @address=address
    @department_id=department_id
   end
end
