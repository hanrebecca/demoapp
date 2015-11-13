class CreateHaasies < ActiveRecord::Migration
  def change
    create_table :haasies do |t|
      t.string :name
      t.string :surname
      t.integer :Looks
      t.integer :Brains
      t.integer :Diversity
      t.string :Overall

      t.timestamps null: false
    end
  end
end
