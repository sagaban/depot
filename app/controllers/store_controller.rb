class StoreController < ApplicationController
=begin
  edit the file index.html.erb in app/views/store. (Remember that the path name to the view is built from the name of
  the controller [store] and the name of the action [index]
=end
  include CurrentCart
  before_action :set_cart
  def index
    @products = Product.order(:title)
  end
end
