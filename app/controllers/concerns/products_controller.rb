class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def show
    product = Product.find_by(id: params[:id])

    if product.nil?
      head 404
    else
      render json: product
    end
  end

  def create
    product = Product.create product_params

    if product.persistant?
      render json: product, status: 201
    else
      head 400
    end
  end

  def update
    product = Product.find_by(id: params[:id])

    if  product.nil?
      head 404
    elsif product.update_attributes(product_params)
      head 204
    else
      head 400
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])

    if product.nil?
      head 404
    else
      product.destroy
      head 204
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :in_stock)
  end
end