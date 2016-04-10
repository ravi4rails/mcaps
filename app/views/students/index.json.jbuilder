json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :middle_name, :last_name, :date_of_birth, :age, :address, :contact, :country, :city, :state, :course_id
  json.url student_url(student, format: :json)
end
