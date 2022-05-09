class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :city
      t.integer :grade_id
      t.integer :branch_id
      t.decimal :cgpa

      t.timestamps
    end
  end
end
