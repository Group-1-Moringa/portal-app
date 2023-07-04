class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :password
      t.date :enrollment_date
      t.references :instructor, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
