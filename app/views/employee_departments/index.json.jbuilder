json.array!(@employee_departments) do |employee_department|
  json.extract! employee_department, :id, :name, :code
  json.url employee_department_url(employee_department, format: :json)
end
