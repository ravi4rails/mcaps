class Employee < ActiveRecord::Base

  validates :first_name,:middle_name, :last_name, :date_of_birth, :age, :date_of_joining, :qualification, :email, :presence => true
  mount_uploader :profile_picture, AvatarUploader
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

end
