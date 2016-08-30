class SalaryDesignation < ActiveRecord::Base
  belongs_to :employee
  validates :salary, presence: true
  validates :designation, presence: true
end
