class Company < ActiveRecord::Base
  has_many :employees
  has_one :address, as: :addressable
  validates :name, presence: true
  validates :email, presence: true, 
        format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
        uniqueness: {case_sensitive: false}
  validates :phone, presence: true, uniqueness: true
  #validates_associated :employees, :addressable
end
