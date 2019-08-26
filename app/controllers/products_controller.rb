class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products, include: [category: {only: :name}, images: {only: :url}]
  end

  # GET /products/1
  def show
    render json: @product, include: [category: {only: :name}, images: {only: :url}]
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: @product, status: :created, location: @product, include: [category: {only: :name}, images: {only: :url}]
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product, include: [category: {only: :name}, images: {only: :url}]
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:shop).permit(:name, :description, :price, :discount, :shop_id, :category_id)
    end
end
