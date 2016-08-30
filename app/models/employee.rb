class Employee < ActiveRecord::Base 
  has_one :address, as: :addressable
  belongs_to :company
  validates :name, presence: true, 
         format: { with: /\s*\w+\s*\w+/i }
  validates :email, presence: true,
         format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
         uniqueness: { case_sensitive: false }
  validates :phone, presence: true, uniqueness: true
  validates :join_year, presence: true 
  validates :salary, presence: true
  validates :designation, presence: true
end
