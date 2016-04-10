class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth
      t.date :date_of_joining
      t.string :qualification
      t.text :address
      t.string :contact
      t.string :gender
      t.string :job_title
      t.string :email
      t.integer :employee_department_id
      t.integer :employee_grade_id
      t.integer :age
      t.string :profile_picture

      t.timestamps null: false
    end
  end
end
