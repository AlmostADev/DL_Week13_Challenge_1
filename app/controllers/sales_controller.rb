class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.save
    redirect_to sales_done_path
  end

  def done

  end

  private
  def sale_params
    params.require(:sale).permit(:detail, :category, :value, :discount, :tax)
  end
end
