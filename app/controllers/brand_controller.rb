class BrandController < ApplicationController
  before_action :authenticate_user!, :set_brand, only: [show]

  def index
    @brand = Brand.all
    render json: @brand, include: 'styles'
  end

  def new
    @brand = Brand.new
    @brand.styles.build
  end

  def show
    @brand = Brand.find(params[:id])
    render json: @brand, include: 'styles'
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      render json: @brand
    else
      render json: @brand.errors
    end
  end

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name, styles_attributes: %i[code price category_id])
  end
end
