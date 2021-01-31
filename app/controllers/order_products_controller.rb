class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]

  # GET /order_products
  def index
    @order_products = OrderProduct.all
  end

  # GET /order_products/1
  def show
  end

  # GET /order_products/new
  def new
    @order_product = OrderProduct.new
  end

  # GET /order_products/1/edit
  def edit
  end

  # POST /order_products
  def create
    @order_product = OrderProduct.new(order_product_params)

    if @order_product.save
      redirect_to @order_product, notice: 'Order product was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /order_products/1
  def update
    if @order_product.update(order_product_params)
      redirect_to @order_product, notice: 'Order product was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /order_products/1
  def destroy
    @order_product.destroy
    redirect_to order_products_url, notice: 'Order product was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_product
      @order_product = OrderProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_product_params
      params.require(:order_product).permit(:product_id, :order_id)
    end
end
