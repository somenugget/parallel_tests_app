class ProductQuantitiesController < ApplicationController
  before_action :set_product_quantity, only: [:show, :edit, :update, :destroy]

  # GET /product_quantities
  def index
    @product_quantities = ProductQuantity.all
  end

  # GET /product_quantities/1
  def show
  end

  # GET /product_quantities/new
  def new
    @product_quantity = ProductQuantity.new
  end

  # GET /product_quantities/1/edit
  def edit
  end

  # POST /product_quantities
  def create
    @product_quantity = ProductQuantity.new(product_quantity_params)

    if @product_quantity.save
      redirect_to @product_quantity, notice: 'Product quantity was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /product_quantities/1
  def update
    if @product_quantity.update(product_quantity_params)
      redirect_to @product_quantity, notice: 'Product quantity was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /product_quantities/1
  def destroy
    @product_quantity.destroy
    redirect_to product_quantities_url, notice: 'Product quantity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_quantity
      @product_quantity = ProductQuantity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_quantity_params
      params.require(:product_quantity).permit(:product_id, :warehouse_id, :quantity)
    end
end
