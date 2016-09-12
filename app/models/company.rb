class Company < ActiveRecord::Base
  has_many :employees
  has_one :address, as: :addressable
  validates :name, presence: true
  validates :email, presence: true,
        format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
        uniqueness: {case_sensitive: false}
  validates :phone, presence: true, uniqueness: true
  validates :address, presence:true
  accepts_nested_attributes_for :address, allow_destroy: true #,reject_if: proc{|address| address[:area].blank?}
  #validates_associated :employees, :addressable
end
