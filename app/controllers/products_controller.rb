class ProductsController < ApplicationController

  def index
    @search_product = SearchProduct.new
    @products = Product.all
  end

  def search
    @search_product = SearchProduct.new(product_params_as_search)
    unless @products = @search_product.search
      @products = Product.all
    end
    render :index
  end

  private

    def product_params_as_search
      params.require(:search_product).permit(:name)
    end
end
