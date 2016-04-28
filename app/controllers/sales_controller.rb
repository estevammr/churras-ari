class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale     = Sale.new
    @clients  = Client.all
    @products = Product.all
  end

  # GET /sales/1/edit
  def edit
    @clients          = Client.all
    @products         = Product.all
    @current_client   = @sale.client
    @current_products = @sale.products
  end

  # POST /sales
  # POST /sales.json
  def create
    @sale            = Sale.new(sale_params)
    @sale.sale_items = set_sale_items(params[:sale_items])

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_sale_items(sale_items)
    @products = Product.all
    sale_items = [sale_items]

    items = []
    sale_items.each do |sale_item|
      id = sale_item[:product_id]
      q  = sale_item[:sale_quantity]
      sale_value = @products.find(sale_item['product_id']).sale_value

      items << SaleItem.new(product_id: id, sale_quantity: q, sale_value: sale_value)
    end

    items
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    @sale.sale_items.destroy_all
    @sale.sale_items = set_sale_items(sale_params)

    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:client_id)
    end
end
