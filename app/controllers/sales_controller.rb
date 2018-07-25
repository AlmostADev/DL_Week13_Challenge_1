class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    @post = Post.new(sale_params)
    @post.save
    redirect_to sales_done_path
  end

  def done

  end

  private
  def sale_params
    params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
  end
end
