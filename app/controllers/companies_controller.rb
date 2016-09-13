class CompaniesController < ApplicationController
  # around_action :logged_in?, on:[:create,:destroy]
  def index
    @companies = Company.all
    logger.info "showing list of companies"
    logger.tagged("ABC") {logger.info "info logger here tagged ABC"}
    CUSTOM_LOGGER.info("showing list of companies")
  end

  def new
    @company = Company.new
  end

  def create

    @company = Company.new(company_params)
    #@company.create_address(address_params)
    # byebug
    if @company.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
    logger.info "showing company #{@company.name}"
    CUSTOM_LOGGER.info("showing company #{@company.name}")
    # @employees = @company.employees
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
    # @company = Company.find(params[:id])
    company = Company.find(params[:id])
    company.destroy
    redirect_to action: :index
  end

  private
  def company_params
    params.require(:company).permit(:name,:email,:phone,:address_attributes => [ :area ])
  end

  def address_params
    params.require(:address).permit(:area)
  end

  def logged_in?
    if #check login status
      yield
    else
      #redirect to login
    end
  end
end
