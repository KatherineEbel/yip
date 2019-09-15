class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(params.require(:business).permit(
                               :name, :telephone, :street, :city, :state, :zip
                             ))
    if @business.save
      flash[:info] = 'Business added'
      redirect_to businesses_path
    else
      render :new
    end
  end
end
