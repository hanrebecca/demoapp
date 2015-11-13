class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :Surname
      t.integer :salary

      t.timestamps null: false
    end
  end
end
