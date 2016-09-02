class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true 
  validates :area, presence: true
  belongs_to :employee,foreign_key: :addressable_id 
  #belongs_to :company,->{where("addresses.addressable_type=?","Company")},foreign_key: :addressable_id
  #validates_associated :addressable
end

