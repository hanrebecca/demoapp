class CreateWhos < ActiveRecord::Migration
  def change
    create_table :whos do |t|
      t.string :are
      t.string :you
      t.integer :age

      t.timestamps null: false
    end
  end
end
