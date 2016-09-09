class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.create_address(address_params)
    if @company.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      redirect_to action: :show, id: "#{@company.id}"
    else
      render :edit
    end

  end

  def delete
    @company = Company.find(params[:id])
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to action: :index
  end

  private
  def company_params
    params.require(:company).permit(:name,:email,:phone)
  end

  def address_params
    params.require(:address).permit(:area)
  end
end
