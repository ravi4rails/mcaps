class EmployeeDepartment < ActiveRecord::Base
  validates :name, :code, :presence => true
end
