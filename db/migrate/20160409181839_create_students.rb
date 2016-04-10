class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :age
      t.text :address
      t.string :contact
      t.string :country
      t.string :city
      t.string :state
      t.integer :course_id
      t.string :relegion
      t.string :blood_group
      t.string :category
      t.string :email
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
