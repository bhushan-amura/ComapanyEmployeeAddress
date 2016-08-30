class Address < ActiveRecord::Base
  belongs_to :addressable, polymorphic: true 
  validates :area, presence: true
  #belongs_to :employee,->{where("addresses.addressable_type=?","Employee")},foreign_key: :addressable_id
end

