class EmployeesController < ApplicationController

  def index
    @company = Company.find(params[:company_id])
    @employees = @company.employees
  end

  def new
    @employee = Employee.new
  end

  def show
    # @company = Company.find(p)
  end

  def delete
  end

  def create
    @employee = Employee.new(employee_params)
    @company = Company.find(params[:company_id])
    # byebug
    if @company.employees << @employee
      redirect_to controller: :employees, action: :index
    else
      render :new
    end
  end

  private
  def employee_params
    params.require(:employee).permit(:name,:email,:join_year,:phone,:address_attributes => [ :area ], :salary_designation_attributes => [:salary, :designation])
  end
end
