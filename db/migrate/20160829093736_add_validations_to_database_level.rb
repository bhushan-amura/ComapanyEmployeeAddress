class AddValidationsToDatabaseLevel < ActiveRecord::Migration
  def change
    add_index :addresses, :addressable_id, :unique => true
    add_index :employees, [:email,:phone], :unique => true
    add_index :companies, [:email,:phone,:name], :unique => true
  end
end
