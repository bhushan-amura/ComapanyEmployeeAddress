class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :join_year
      t.string :phone

      t.timestamps null: false
    end
  end
end
