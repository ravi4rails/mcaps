json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :middle_name, :last_name, :date_of_birth, :date_of_joining, :qualification, :address, :contact, :gender, :job_title, :email, :employee_department_id, :employee_grade_id, :age
  json.url employee_url(employee, format: :json)
end
