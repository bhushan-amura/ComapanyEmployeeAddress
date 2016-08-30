class CreateSalaryDesignations < ActiveRecord::Migration
  def change
    create_table :salary_designations do |t|
      t.integer :salary
      t.string :designation
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
