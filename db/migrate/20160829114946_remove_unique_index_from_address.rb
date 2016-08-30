class RemoveUniqueIndexFromAddress < ActiveRecord::Migration
  def change
    remove_column :addresses, [:addressable_id, :addressable_type]
  end
end
