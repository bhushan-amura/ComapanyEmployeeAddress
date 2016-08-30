class AddIndexToAddress < ActiveRecord::Migration
  def change
    add_index :addresses, [:addressable_id,:addressable_type],unique: true
  end
end
