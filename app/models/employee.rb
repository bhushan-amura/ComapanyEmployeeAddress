class Employee < ActiveRecord::Base
  has_one :address, as: :addressable
  belongs_to :company
  has_one :salary_designation
  validates :name, presence: true,
    format: { with: /\s*\w+\s*\w+/i }
  validates :email, presence: true,
    format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i },
    uniqueness: { case_sensitive: false }
  validates :phone, presence: true, uniqueness: true
  validates :join_year, presence: true
  accepts_nested_attributes_for :address, allow_destroy: true
  accepts_nested_attributes_for :salary_designation
end
