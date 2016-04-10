class Student < ActiveRecord::Base
  validates :first_name,:middle_name, :last_name, :date_of_birth, :age, :category, :email, :presence => true
  BLOOD_GROUP = ["A", "B", "B+", "O+", "A-"]
  RELEGION = ["Hindu", "Muslim", "Chrestian", "Sikh"]
  CATEGORY = ["General", "Obc", "St", "Sc"]

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

end
