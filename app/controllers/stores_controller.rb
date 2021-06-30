class StoresController < ApplicationController
  def index
    @products = Product.all
  end

  def show
  end

  def add_to_cart
    product = Product.find(params[:id]) 
    @cart = find_cart
    p product                   
    Cart.add_product(product) 
  end

  private

  def find_cart
    @cart = Cart.find(session[:cart_id]) if session[:cart_id].present?
    if @cart.nil?
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
  


end
